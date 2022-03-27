"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

THIS = 3
THAT = 4

COMMAND_TYPE = {'add': 'C_ARITHMETIC', 'sub': 'C_ARITHMETIC',
                'neg': 'C_ARITHMETIC', 'eq': 'C_ARITHMETIC',
                'gt': 'C_ARITHMETIC', 'lt': 'C_ARITHMETIC',
                'and': 'C_ARITHMETIC', 'or': 'C_ARITHMETIC',
                'not': 'C_ARITHMETIC', 'push': 'C_PUSH',
                'pop': 'C_POP', 'label': 'C_LABEL', 'goto': 'C_GOTO',
                'if-goto': 'C_IF', 'function': 'C_FUNCTION',
                'return': 'C_RETURN', 'call': 'C_CALL',
                'shiftright': 'C_ARITHMETIC', 'shiftleft': 'C_ARITHMETIC'}


class Parser:
    """
    Handles the parsing of a single .vm file, and encapsulates access to the
    input code. It reads VM commands, parses them, and provides convenient 
    access to their components. 
    In addition, it removes all white space and comments.
    """

    def __init__(self, input_file: typing.TextIO) -> None:
        """Gets ready to parse the input file.

        Args:
            input_file (typing.TextIO): input file.
        """
        self.__commend_lines = []
        self.__current_line_num = -1
        self.__current_commend = ''
        self.__length = 0
        self.__split_command = ''

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
        """Reads the next command from the input and makes it the current 
        command. Should be called only if has_more_commands() is true. Initially
        there is no current command.
        """
        self.__current_commend = self.__commend_lines[self.__current_line_num]
        self.__split_command = self.__current_commend.split()
        self.__current_line_num += 1

    def command_type(self) -> str:
        """
        Returns:
            str: the type of the current VM command.
            "C_ARITHMETIC" is returned for all arithmetic commands.
            For other commands, can return:
            "C_PUSH", "C_POP", "C_LABEL", "C_GOTO", "C_IF", "C_FUNCTION",
            "C_RETURN", "C_CALL".
        """
        return COMMAND_TYPE[self.__current_commend.split(' ')[0]]

    def arg1(self) -> str:
        """
        Returns:
            str: the first argument of the current command. In case of 
            "C_ARITHMETIC", the command itself (add, sub, etc.) is returned. 
            Should not be called if the current command is "C_RETURN".
        """
        if len(self.__split_command) == 1:
            return self.__split_command[0]
        else:
            return self.__split_command[1]

    def arg2(self) -> int:
        """
        Returns:
            int: the second argument of the current command. Should be
            called only if the current command is "C_PUSH", "C_POP", 
            "C_FUNCTION" or "C_CALL".
        """
        return int(self.__split_command[2])
