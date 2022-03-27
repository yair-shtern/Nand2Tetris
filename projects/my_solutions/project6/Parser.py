"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing


class Parser:
    """Encapsulates access to the input code. Reads and assembly language 
    command, parses it, and provides convenient access to the commands 
    components (fields and symbols). In addition, removes all white space and 
    comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Opens the input file and gets ready to parse it.

        Args:
            input_file (typing.TextIO): input file.
        """
        self.__commend_lines = []
        self.__current_line_num = -1
        self.__current_commend = ''
        self.__length = 0

        self._filter_commends(input_file)
        if self.__length != 0:
            self.__current_line_num = 0

    def _filter_commends(self, input_file):
        input_lines = input_file.read().splitlines()
        length = len(input_lines)
        for i in range(length):
            if not input_lines[i].startswith('//') and input_lines[i] != '':
                if '//' in input_lines[i]:
                    input_lines[i] = input_lines[i].split('//')[0]
                self.__commend_lines.append(input_lines[i].strip())
                self.__length += 1

    def has_more_commands(self) -> bool:
        """Are there more commands in the input?

        Returns:
            bool: True if there are more commands, False otherwise.
        """
        if self.__length == 0:
            return False
        if self.__current_line_num == self.__length:
            self.__current_line_num = 0
            self.__current_commend = self.__commend_lines[0]
            return False
        return self.__current_line_num < self.__length

    def advance(self) -> None:
        """Reads the next command from the input and makes it the current command.
        Should be called only if has_more_commands() is true.
        """
        self.__current_commend = self.__commend_lines[self.__current_line_num]
        self.__current_line_num += 1

    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current command:
            "A_COMMAND" for @Xxx where Xxx is either a symbol or a decimal number
            "C_COMMAND" for dest=comp;jump
            "L_COMMAND" (actually, pseudo-command) for (Xxx) where Xxx is a symbol
        """
        if self.__current_commend.startswith('@'):
            return 'A_COMMAND'
        if self.__current_commend.startswith('('):
            return 'L_COMMAND'
        return 'C_COMMAND'

    def symbol(self) -> str:
        """
        Returns:
            str: the symbol or decimal Xxx of the current command @Xxx or
            (Xxx). Should be called only when command_type() is "A_COMMAND" or
            "L_COMMAND".
        """
        if self.command_type() == 'A_COMMAND':
            return self.__current_commend[1:]
        else:
            return self.__current_commend[1:-1]

    def dest(self) -> str:
        """
        Returns:
            str: the dest mnemonic in the current C-command. Should be called
            only when commandType() is "C_COMMAND".
        """
        if '=' in self.__current_commend:
            dst = self.__current_commend.split('=')
            return dst[0].strip()
        return ''

    def comp(self) -> str:
        """
        Returns:
            str: the comp mnemonic in the current C-command. Should be called
            only when commandType() is "C_COMMAND".
        """
        cmp = self.__current_commend
        if '=' in self.__current_commend:
            cmp = self.__current_commend.split('=')[1]
        if ';' in cmp:
            cmp = cmp.split(';')[0]
        return cmp.strip()

    def jump(self) -> str:
        """
        Returns:
            str: the jump mnemonic in the current C-command. Should be called
            only when commandType() is "C_COMMAND".
        """
        if ';' in self.__current_commend:
            jmp = self.__current_commend.split(';')
            return jmp[1]
        else:
            return ''
