"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

C_TEMPLATE = '@SP\nAM=M-1\nD=M\nA=A-1\n'
DICT1 = {'gt': 'TRUE', 'lt': 'FALSE', 'eq': 'FALSE'}
DICT2 = {'gt': 'FALSE', 'lt': 'TRUE', 'eq': 'FALSE'}
C_COMMANDS = {'add': 'M=M+D\n', 'sub': 'M=M-D\n', 'and': 'M=M&D\n',
              'or': 'M=M|D\n'}
SHIFT = {'shiftright': 'M=M>>\n', 'shiftleft': 'M=M<<\n'}
J_COMMANDS = {'gt': 'JGT\n', 'lt': 'JLT\n', 'eq': 'JEQ\n'}
NOT_NEG_COMMANDS = {'not': '@SP\nA=M-1\nM=!M\n', 'neg': '@SP\nA=M-1\nM=-M\n'}
POP_TEMPLATE = ['@', '\nD=M\n@',
                '\nD=D+A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D\n']
PUSH_TEMPLATE = ['@', '\nD=M\n@', '\nA=D+A\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n']
POP_BASIC = 'D=A\n@R13\nM=D\n@SP\nAM=M-1\nD=M\n@R13\nA=M\nM=D\n'
PUSH_BASIC = 'D=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n'
PUSH_BASIC_CONSTANT = 'D=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n'
RETURN = '\n// return\n\n// end_frame = LCL\n@LCL\nD=M\n@R15\nM=D\n' \
         '\n// return_address = *(end_frame - 5)\n@5\nD=A\n@R15\nD=M-D\n' \
         'A=D\nD=M\n@R14\nM=D\n\n// *ARG = pop()\n@SP\nM=M-1\nA=M\nD=M\n' \
         '@ARG\nA=M\nM=D\n\n// SP = ARG + 1\n@ARG\nD=M+1\n\n' \
         '// THAT = *(end_frame - 1)\n@SP\nM=D\n@R15\n' \
         'A=M-1\nD=M\n@THAT\nM=D\n\n// THIS = *(end_frame - 2)\n@R15\nD=M\n' \
         '@2\nA=D-A\nD=M\n@THIS\nM=D\n\n// ARG = *(end_frame - 3)\n@R15\n' \
         'D=M\n@3\nA=D-A\nD=M\n@ARG\nM=D\n\n// LCL = *(end_frame - 4)\n' \
         '@R15\nD=M\n@4\nA=D-A\nD=M\n@LCL\nM=D\n\n// goto return_address\n' \
         '@R14\nA=M\n0;JMP\n'
LABELS = {'local': 'LCL', 'argument': 'ARG', 'this': 'THIS',
          'that': 'THAT', 'temp': 'R5', 'static': '16'}


class CodeWriter:
    """Translates VM commands into Hack assembly code."""

    def __init__(self, output_stream: typing.TextIO) -> None:
        """Initializes the CodeWriter.

        Args:
            output_stream (typing.TextIO): output stream.
        """
        self.__output_stream = output_stream
        self.__j_counter = 0
        self.__label_counter = 0
        self.__file_name = ''
        self.__curr_function = ''

    def set_file_name(self, filename: str) -> None:
        """Informs the code writer that the translation of a new VM file is
        started.

        Args:
            filename (str): The name of the VM file.
        """
        self.__file_name = filename + '.'

    def write_arithmetic(self, command: str) -> None:
        """Writes the assembly code that is the translation of the given
        arithmetic command.

        Args:
            command (str): an arithmetic command.
        """
        self.__output_stream.write('\n// ' + command + '\n')
        if command in SHIFT:
            self.__output_stream.write('@SP\nA=M-1\n' + SHIFT[command])
        elif command in C_COMMANDS:
            self.__output_stream.write(C_TEMPLATE + C_COMMANDS[command])
        elif command in J_COMMANDS:
            label = self.__file_name + str(self.__j_counter)
            self.__output_stream.write(
                f"@SP\nAM=M-1\nD=M\n@R12\nM=D\n@B_GT{label}\nD;JGE\n@SP\nA=M-1\nD=M\n@R13\nM=D\n@{DICT1[command]}{label}\nD;JGE\n"
                f"(CONTINUE{label})\n@R12\nD=M\n@R13\nD=M-D\n@TRUE{label}\nD;{J_COMMANDS[command]}(FALSE{label})\n@SP\nA=M-1\n"
                f"M=0\n@END{label}\n0;JMP\n(TRUE{label})\n@SP\nA=M-1\nM=-1\n@END{label}\n0;JMP\n(B_GT{label})\n"
                f"@SP\nA=M-1\nD=M\n@R13\nM=D\n@CONTINUE{label}\nD;JGE\n@{DICT2[command]}{label}\n0;JMP\n"
                f"(END{label})\n")
            self.__j_counter += 1
        elif command in NOT_NEG_COMMANDS:
            self.__output_stream.write(NOT_NEG_COMMANDS[command])

    def write_push_pop(self, command: str, segment: str, index: int) -> None:
        """Writes the assembly code that is the translation of the given
        command, where command is either C_PUSH or C_POP.

        Args:
            command (str): "C_PUSH" or "C_POP".
            segment (str): the memory segment to operate on.
            index (int): the index in the memory segment.
        """
        self.__output_stream.write(
            '\n// ' + command + ' ' + segment + ' ' + str(index) + '\n')
        if command == 'pop':
            if segment == 'static':
                self.__output_stream.write('@' + self.__file_name +
                                           str(index) + '\n' + POP_BASIC)
            elif segment == 'pointer':
                if index == 0:
                    self.__output_stream.write('@THIS\n' + POP_BASIC)

                else:  # index == 1
                    self.__output_stream.write('@THAT\n' + POP_BASIC)
            elif segment == 'temp':
                self.__output_stream.write('@' + str(index + 5) +
                                           '\n' + POP_BASIC)
            else:
                self.__output_stream.write(POP_TEMPLATE[0] + LABELS[segment] +
                                           POP_TEMPLATE[1] + str(index) +
                                           POP_TEMPLATE[2])
        else:  # command == 'push':
            if segment == 'static':
                self.__output_stream.write('@' + self.__file_name +
                                           str(index) + '\n' + PUSH_BASIC)
            elif segment == 'pointer':
                if index == 0:
                    self.__output_stream.write('@THIS\n' + PUSH_BASIC)

                else:  # index == 1
                    self.__output_stream.write('@THAT\n' + PUSH_BASIC)
            elif segment == 'constant':
                self.__output_stream.write(
                    '@' + str(index) + '\n' + PUSH_BASIC_CONSTANT)
            elif segment == 'temp':
                self.__output_stream.write('@' + str(index + 5) +
                                           '\n' + PUSH_BASIC)
            else:
                self.__output_stream.write(
                    PUSH_TEMPLATE[0] + LABELS[segment] +
                    PUSH_TEMPLATE[1] + str(index) +
                    PUSH_TEMPLATE[2])

    def write_init(self) -> None:
        """Writes the assembly code that init the system.
        """
        self.__output_stream.write('// initialize system\n')
        self.__output_stream.write('@256\nD=A\n@SP\nM=D\n')
        self.write_call('Sys.init', 0)

    def write_label(self, label: str) -> None:
        """Writes the assembly code that is the translation of the
        label command.

        Args:
            label (str): the label of the command.
        """
        label = self.__curr_function + '$' + label
        self.__output_stream.write('\n(' + label + ')\n')

    def write_goto(self, label: str) -> None:
        """Writes the assembly code that is the translation of the
        goto command. (we assume that the argument is legal).

        Args:
            label (str): the label of the goto command.
        """
        self.__output_stream.write('\n// goto ' + label + '\n')
        label = self.__curr_function + '$' + label
        self.__output_stream.write('@' + label + '\n0;JMP\n')

    def write_if(self, label: str) -> None:
        """Writes the assembly code that is the translation of the
        if-goto command.

        Args:
            label (str): the label of the if command.
        """
        self.__output_stream.write('\n// if-goto ' + label + '\n')
        label = self.__curr_function + '$' + label
        self.__output_stream.write('@SP\nAM=M-1\nD=M\n@' + label + '\nD;JNE\n')

    def write_call(self, function: str, num_args: int) -> None:
        """Writes the assembly code that is the translation of the call
        command.

        Args:
            function (str): the function called.
            num_args (int): the num of argument that the function called gets.
        """
        self.__output_stream.write(
            '\n// call ' + function + ' ' + str(num_args) + '\n')
        return_address = self.__file_name + function + '$ret.' + str(self.__label_counter)
        self.__output_stream.write(
            '\n// push return_address\n@' + return_address +
            '\n' + PUSH_BASIC_CONSTANT +
            '\n// push LCL\n@LCL\n' + PUSH_BASIC +
            '\n// push ARG\n@ARG\n' + PUSH_BASIC +
            '\n// push THIS\n@THIS\n' + PUSH_BASIC +
            '\n// push THAT\n@THAT\n' + PUSH_BASIC +
            '\n// ARG = SP - (n + 5)\n@SP\nD=M\n@' + str(5 + num_args) +
            '\nD=D-A\n@ARG\nM=D\n@SP\nD=M\n'
            '\n// LCL = SP\n@SP\nD=M\n@LCL\nM=D\n\n// goto ' + function + '\n@' +
            function + '\n0;JMP\n(' + return_address + ')\n')
        self.__label_counter += 1

    def write_function(self, function: str, num_locals: int) -> None:
        """Writes the assembly code that is the translation of the function
        command.

        Args:
            function (str): the function.
            num_locals (int): the num of argument that the function gets.
        """
        self.__output_stream.write(
            '\n// ' + function + ' ' + str(num_locals) + '\n')
        self.__output_stream.write('(' + function + ')\n')
        for i in range(num_locals):
            self.__output_stream.write('@0\n' + PUSH_BASIC_CONSTANT)
        self.__curr_function = function

    def write_return(self) -> None:
        """Writes the assembly code that is the translation of the return
        command.
        """
        self.__output_stream.write(RETURN)

    def close(self) -> None:
        """Closes the output file."""
        self.__output_stream.close()
