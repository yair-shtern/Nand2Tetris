"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing

KEYWORDS = [
    'class', 'method', 'function', 'constructor', 'int', 'boolean', 'char',
    'void', 'var', 'static', 'field', 'let', 'do', 'if', 'else', 'while',
    'return', 'true', 'false', 'null', 'this']

SYMBOLS = [
    "{", "}", "(", ")", "[", "]", ".", ",", ";", "+", "-", "*", "/", "&",
    "|", "<", ">", "=", "~", "^", "#", "\""]

REPLACE_SYMBOLS = {'<': '&lt;', '>': '&gt;', '"': '&quot;', '&': '&amp;'}


class JackTokenizer:
    """Removes all comments from the input stream and breaks it
    into Jack language tokens, as specified by the Jack grammar.
    """

    def __init__(self, input_stream: typing.TextIO) -> None:
        """Opens the input stream and gets ready to tokenize it.

        Args:
            input_stream (typing.TextIO): input stream.
        """
        self.__commend_lines = []
        self.__filter_lines(input_stream)
        self.__tokens = []
        self.__filter_tokens()
        self.__curr_token = ''
        self.__num_curr_token = 0

    def __filter_lines(self, input_file: typing.TextIO) -> None:
        input_lines = input_file.read().splitlines()
        length = len(input_lines)
        i = 0
        while i < length:
            if not input_lines[i].startswith('//') and input_lines[i] != '':
                j = 0
                while j < len(input_lines[i]):
                    if input_lines[i][j] == '"':
                        j += 1
                        while input_lines[i][j] != '"':
                            j += 1
                    if input_lines[i][j] == '/' and \
                            input_lines[i][j + 1] == '/':
                        input_lines[i] = input_lines[i][:j] + \
                                         input_lines[i][j:].split('//')[0]
                    elif input_lines[i][j] == '/' and \
                            input_lines[i][j + 1] == '*':
                        res = input_lines[i][:j] + \
                              input_lines[i][j:].split('/*')[0]
                        while '*/' not in input_lines[i][j:]:
                            i += 1
                            j = 0
                        res2 = input_lines[i][j:].split('*/')
                        input_lines[i] = res + res2[len(res2) - 1]
                    j += 1
                self.__commend_lines.append(input_lines[i].strip())
            i += 1

    def __filter_tokens(self) -> None:
        split_arr = []
        self.__split_lines(split_arr)

        for word in split_arr:
            if word == '':
                continue
            if word in KEYWORDS:
                self.__tokens.append((word, 'KEYWORD'))
            elif word in SYMBOLS:
                self.__tokens.append((word, 'SYMBOL'))
            elif word.isdigit():
                self.__tokens.append((word, 'INT_CONST'))
            elif word[0] == '"':
                self.__tokens.append((word[1:-1], 'STRING_CONST'))
            else:
                i = 0
                while i < len(word):
                    if word[i] in SYMBOLS:
                        if len(word[:-(len(word) - i)]) != 0:
                            if word[:-(len(word) - i)][0] == '"':
                                self.__tokens.append((word[:-(len(word) - i)],
                                                      'STRING_CONST'))
                            elif word[:-(len(word) - i)] in KEYWORDS:
                                self.__tokens.append((word[:-(len(word) - i)],
                                                      'KEYWORD'))
                            elif word[:-(len(word) - i)] in SYMBOLS:
                                self.__tokens.append((word[:-(len(word) - i)],
                                                      'SYMBOL'))
                            elif word[:-(len(word) - i)].isdigit():
                                self.__tokens.append((word[:-(len(word) - i)],
                                                      'INT_CONST'))
                            else:
                                self.__tokens.append((word[:-(len(word) - i)],
                                                      'IDENTIFIER'))
                        self.__tokens.append((word[i], 'SYMBOL'))
                        word = word[i + 1:]
                        i = 0
                        continue
                    elif word in KEYWORDS:
                        self.__tokens.append((word, 'KEYWORD'))
                        word = ''
                        break
                    elif word.isdigit():
                        self.__tokens.append((word, 'INT_CONST'))
                        word = ''
                        break
                    i += 1
                if len(word) != 0:
                    self.__tokens.append((word, 'IDENTIFIER'))
        self.__replace_tokens()

    def __replace_tokens(self):
        for i in range(len(self.__tokens)):
            key = self.__tokens[i][0]
            if key in REPLACE_SYMBOLS:
                val = self.__tokens[i][1]
                self.__tokens[i] = (REPLACE_SYMBOLS[key], val)

    def __split_lines(self, arr):
        tmp_arr = []
        for line in self.__commend_lines:
            for word in line.split():
                tmp_arr.append(word)
        i = 0
        while i < len(tmp_arr):
            j = tmp_arr[i].find('"')
            if j == -1:
                arr.append(tmp_arr[i])
            else:
                arr.append(tmp_arr[i][:-(len(tmp_arr[i]) - j)])
                tmp_arr[i] = tmp_arr[i][j + 1:]
                string = '"' + tmp_arr[i]
                j = tmp_arr[i].find('"')
                if j != -1:
                    string += ' ' + tmp_arr[i][:-(len(tmp_arr[i]) - j)]
                    tmp_arr[i] = tmp_arr[i][j + 1:]
                    arr.append(string + '"')
                    i -= 1
                    continue
                else:
                    if i == len(tmp_arr) - 1:
                        return
                    i += 1
                    j = tmp_arr[i].find('"')
                while j == -1:
                    string += ' ' + tmp_arr[i]
                    if i == len(tmp_arr) - 1:
                        return
                    i += 1
                    j = tmp_arr[i].find('"')
                string += ' ' + tmp_arr[i][:-(len(tmp_arr[i]) - j)]
                tmp_arr[i] = tmp_arr[i][j + 1:]
                arr.append(string + '"')
                i -= 1
            i += 1

    def has_more_tokens(self) -> bool:
        """Do we have more tokens in the input?

        Returns:
            bool: True if there are more tokens, False otherwise.
        """
        return self.__num_curr_token < len(self.__tokens)

    def advance(self) -> None:
        """Gets the next token from the input and makes it the current token.
        This method should be called if has_more_tokens() is true.
        Initially there is no current token.
        """
        self.__curr_token = self.__tokens[self.__num_curr_token]
        self.__num_curr_token += 1
        return self.__curr_token

    def token_type(self) -> str:
        """
        Returns:
            str: the type of the current token, can be
            "KEYWORD", "SYMBOL", "IDENTIFIER", "INT_CONST", "STRING_CONST"
        """
        return self.__curr_token[1]

    def keyword(self) -> str:
        """
        Returns:
            str: the keyword which is the current token.
            Should be called only when token_type() is "KEYWORD".
            Can return "CLASS", "METHOD", "FUNCTION", "CONSTRUCTOR", "INT",
            "BOOLEAN", "CHAR", "VOID", "VAR", "STATIC", "FIELD", "LET", "DO",
            "IF", "ELSE", "WHILE", "RETURN", "TRUE", "FALSE", "NULL", "THIS"
        """
        return self.__curr_token[0]

    def symbol(self) -> str:
        """
        Returns:
            str: the character which is the current token.
            Should be called only when token_type() is "SYMBOL".
        """
        return self.__curr_token[0]

    def identifier(self) -> str:
        """
        Returns:
            str: the identifier which is the current token.
            Should be called only when token_type() is "IDENTIFIER".
        """
        return self.__curr_token[0]

    def int_val(self) -> int:
        """
        Returns:
            str: the integer value of the current token.
            Should be called only when token_type() is "INT_CONST".
        """
        return self.__curr_token[0]

    def string_val(self) -> str:
        """
        Returns:
            str: the string value of the current token, without the double
            quotes. Should be called only when token_type() is "STRING_CONST".
        """
        return self.__curr_token[0]
