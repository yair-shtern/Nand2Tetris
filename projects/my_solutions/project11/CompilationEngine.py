"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing
from VMWriter import VMWriter
from SymbolTable import SymbolTable
from JackTokenizer import JackTokenizer

KINDS = {'static': 'STATIC', 'field': 'FIELD', 'var': 'VAR'}
OP = {'+': 'add', '-': 'sub', '|': 'or', '=': 'eq', '<': 'lt', '>': 'gt',
      '&': 'and', '*': '', '/': ''}
OP_CALL = {'*': 'Math.multiply', '/': 'Math.divide'}
UNARY_OP = {'-': 'neg', '~': 'not', '^': 'shiftleft', '#': 'shiftright'}
TYPES = {'KEYWORD': 'keyword', 'IDENTIFIER': 'identifier', 'SYMBOL': 'symbol',
         'INT_CONST': 'integerConstant', 'STRING_CONST': 'stringConstant'}

STATEMENTS = ['if', 'let', 'do', 'while', 'return']
SUBROUTINES = ['function', 'method', 'constructor']


class CompilationEngine:
    """Gets input from a JackTokenizer and emits its parsed structure into an
    output stream.
    """

    def __init__(self, input_stream: typing.TextIO,
                 output_stream: typing.TextIO) -> None:
        """
        Creates a new compilation engine with the given input and output. The
        next routine called must be compileClass()
        :param input_stream: The input stream.
        :param output_stream: The output stream.
        """
        self.__curr_subroutine = ''
        self.__tokens = JackTokenizer(input_stream)
        self.__writer = VMWriter(output_stream)
        self.__tables = SymbolTable()
        self.__curr_class_name = ''
        self.__curr_subroutine_name = ''

    def compile_class(self) -> None:
        """Compiles a complete class."""
        self.__tokens.advance()
        self.__tokens.advance()
        self.__curr_class_name = self.__tokens.current_token()
        self.__tokens.advance()
        self.__tokens.advance()
        self.compile_class_var_dec()
        while self.__tokens.current_token() in SUBROUTINES:
            current = self.__tokens.current_token()
            self.__tables.start_subroutine()
            if current == 'function':
                self.__curr_subroutine = current
                self.compile_func()
            elif current == 'method':
                self.__curr_subroutine = current
                self.compile_method()
            elif current == 'constructor':
                self.__curr_subroutine = current
                self.compile_constructor()
            # self.__tokens.advance()
            if self.__tokens.current_token() not in SUBROUTINES and \
                    self.__tokens.has_more_tokens():
                self.__tokens.advance()

    def compile_class_var_dec(self) -> None:
        """Compiles a static declaration or a field declaration."""
        while self.__tokens.current_token() in KINDS:
            kind = self.__tokens.current_token()
            self.__tokens.advance()
            type = self.__tokens.current_token()
            self.__tokens.advance()
            name = self.__tokens.current_token()
            self.__tables.define(name, type, KINDS[kind])
            self.__tokens.advance()
            while self.__tokens.current_token() == ',':
                self.__tokens.advance()
                name = self.__tokens.current_token()
                self.__tables.define(name, type, KINDS[kind])
                self.__tokens.advance()
            self.__tokens.advance()

    def compile_func(self):
        self.__tokens.advance()
        self.__tokens.advance()
        name = self.__tokens.current_token()
        # self.__writer.write_label(name)
        self.__tokens.advance()
        self.__tokens.advance()
        if self.__tokens.current_token() != ')':
            self.compile_args()
        self.__tokens.advance()
        self.__tokens.advance()
        self.compile_subroutine()
        counter = self.__tables.var_count('VAR')
        self.__writer.write_function(self.__curr_class_name + '.' +
                                     name, counter)
        self.compile_statements()
        self.__tokens.advance()

    def compile_constructor(self):
        self.__tokens.advance()
        name = self.__tokens.current_token()
        self.__tokens.advance()
        self.__tokens.advance()
        self.__tokens.advance()
        if self.__tokens.current_token() != ')':
            self.compile_args()
        self.__tokens.advance()
        self.__tokens.advance()
        self.compile_subroutine()
        counter = self.__tables.var_count('VAR')
        self.__writer.write_function(name + '.new', counter)
        self.__writer.write_push('CONST', self.__tables.var_count('FIELD'))
        self.__writer.write_call('Memory.alloc', 1)
        self.__writer.write_pop('POINTER', 0)
        self.compile_statements()
        self.__tokens.advance()

    def compile_method(self):
        self.__tokens.advance()
        self.__tokens.advance()
        name = self.__tokens.current_token()
        self.__tokens.advance()
        self.__tokens.advance()
        self.__tables.define('this', self.__curr_class_name, 'ARG')
        if self.__tokens.current_token() != ')':
            self.compile_args()
        self.__tokens.advance()
        self.__tokens.advance()
        self.compile_subroutine()
        counter = self.__tables.var_count('VAR')
        self.__writer.write_function(self.__curr_class_name + '.' +
                                     name, counter)
        self.__writer.write_push('ARG', 0)
        self.__writer.write_pop("POINTER", 0)
        self.compile_statements()
        self.__tokens.advance()

    def compile_subroutine(self) -> None:
        """Compiles a complete method, function, or constructor."""
        while self.__tokens.current_token() in KINDS:
            kind = self.__tokens.current_token()
            self.__tokens.advance()
            type = self.__tokens.current_token()
            self.__tokens.advance()
            name = self.__tokens.current_token()
            self.__tokens.advance()
            self.__tables.define(name, type, KINDS[kind])
            while self.__tokens.current_token() == ',':
                self.__tokens.advance()
                name = self.__tokens.current_token()
                self.__tables.define(name, type, KINDS[kind])
                self.__tokens.advance()
            self.__tokens.advance()

    def compile_parameter_list(self) -> None:
        """Compiles a (possibly empty) parameter list, not including the
        enclosing "()".
        """
        """Compiles a complete method, function, or constructor."""
        while self.__tokens.current_token() in KINDS:
            kind = self.__tokens.current_token()
            self.__tokens.advance()
            type = self.__tokens.current_token()
            self.__tokens.advance()
            name = self.__tokens.current_token()
            self.__tokens.advance()
            self.__tables.define(name, type, KINDS[kind])
            while self.__tokens.current_token() == ',':
                self.__tokens.advance()
                name = self.__tokens.current_token()
                self.__tables.define(name, type, KINDS[kind])
                self.__tokens.advance()
            self.__tokens.advance()

    def compile_var_dec(self) -> None:
        """Compiles a var declaration."""
        kind = self.__tokens.current_token()
        self.__tokens.advance()
        if self.__tokens.token_type() == 'KEYWORD':
            type = self.__tokens.current_token()
        else:
            type = self.__tokens.current_token()
        self.__tokens.advance()
        name = self.__tokens.current_token()
        self.__tables.define(name, type, KINDS[kind])
        self.__tokens.advance()
        while self.__tokens.current_token() == ',':
            self.__tokens.advance()
            name = self.__tokens.current_token()
            self.__tables.define(name, type, KINDS[kind])
            self.__tokens.advance()
        self.__tokens.advance()

    def compile_statements(self) -> None:
        """Compiles a sequence of statements, not including the enclosing
        "{}".
        """
        while self.__tokens.token_type() == 'KEYWORD':
            keyword = self.__tokens.current_token()
            if keyword == 'if':
                self.compile_if()
            elif keyword == 'do':
                self.compile_do()
            elif keyword == 'let':
                self.compile_let()
            elif keyword == 'while':
                self.compile_while()
            elif keyword == 'return':
                self.compile_return()
            else:
                break
            # elif keyword == 'else':
            #     self.__tokens.advance()
            #     if self.__tokens.current_token() == '{':
            #         self.__tokens.advance()

    def compile_do(self) -> None:
        """Compiles a do statement."""
        self.__tokens.advance()
        name = self.__tokens.current_token()
        self.__tokens.advance()
        if self.__tokens.current_token() == '.':
            self.__tokens.advance()
            self.compile_dot(name)
            self.__tokens.advance()
            # self.compile_statements()
            # self.__tokens.advance()
        elif self.__tokens.current_token() == '(':
            self.compile_subroutine_call(name)
        self.__writer.write_pop('TEMP', 0)
        # self.compile_statements()
        # if self.__tokens.current_token() == ';':
        # self.__tokens.advance()

    def compile_let(self) -> None:
        """Compiles a let statement."""
        self.__tokens.advance()
        name = self.__tokens.current_token()
        self.__tokens.advance()
        # self.__writer.write_push(self.__tables.kind_of(name),
        #                          self.__tables.index_of(name))
        tmp = 0
        if self.__tokens.current_token() == '[':
            tmp = 1
            self.compile_array(name)
        # else:
        # self.__tokens.advance()
        self.compile_expression()
        self.__tokens.advance()
        if tmp == 0:
            self.__writer.write_pop(self.__tables.kind_of(name),
                                    self.__tables.index_of(name))
        else:
            self.__writer.write_pop('TEMP', 0)
            self.__writer.write_pop('POINTER', 1)
            self.__writer.write_push('TEMP', 0)
            self.__writer.write_pop('THAT', 0)

    def compile_while(self) -> None:
        """Compiles a while statement."""
        self.__tables.set_while_counter(1)
        counter = str(self.__tables.get_while_counter())
        self.__writer.write_label('WHILE.' + counter)
        self.__tokens.advance()
        self.__tokens.advance()
        self.compile_expression()
        self.__writer.write_arithmetic('not')
        self.__tokens.advance()
        self.__writer.write_if('END_WHILE.' + counter)
        self.__tokens.advance()
        self.compile_statements()
        self.__tokens.advance()
        self.__writer.write_goto('WHILE.' + counter)
        self.__writer.write_label('END_WHILE.' + counter)
        # self.__tables.set_while_counter(-1)

    def compile_return(self) -> None:
        """Compiles a return statement."""
        self.__tokens.advance()
        if self.__tokens.token_type() != 'SYMBOL':
            self.compile_expression()
            self.__tokens.advance()
        else:
            self.__writer.write_push('CONST', 0)
        self.__writer.write_return()
        # self.__tokens.advance()

    def compile_if(self) -> None:
        """Compiles a if statement, possibly with a trailing else clause."""
        self.__tables.set_if_counter(1)
        counter = str(self.__tables.get_if_counter())
        self.__tokens.advance()
        self.__tokens.advance()
        self.compile_expression()
        self.__tokens.advance()
        self.__tokens.advance()
        self.__writer.write_if('IF_TRUE.' + counter)
        self.__writer.write_goto('IF_FALSE.' + counter)
        self.__writer.write_label('IF_TRUE.' + counter)
        self.compile_statements()
        self.__tokens.advance()
        self.__writer.write_goto('END_IF.' + counter)
        if self.__tokens.current_token() == 'else':
            self.__writer.write_label('IF_FALSE.' + counter)
            self.__tokens.advance()
            self.__tokens.advance()
            self.compile_statements()
            self.__writer.write_label('END_IF.' + counter)
            self.__tokens.advance()
        else:
            self.__writer.write_label('IF_FALSE.' + counter)
            self.__writer.write_label('END_IF.' + counter)
        # self.__tables.set_if_counter(-1)

    def compile_expression(self) -> None:
        """Compiles an expression."""
        self.compile_term()
        while self.__tokens.current_token() in OP:
            op = self.__tokens.current_token()
            self.__tokens.advance()
            self.compile_expression()
            # while self.__tokens.current_token() in OP:
            #     self.compile_expression()
            if op in OP_CALL:
                self.__writer.write_call(OP_CALL[op], 2)
                # self.__tokens.advance()
            else:
                self.__writer.write_arithmetic(OP[op])
                # self.__tokens.advance()

            # self.__tokens.advance()

    def compile_term(self) -> None:
        """Compiles a term.
        This routine is faced with a slight difficulty when
        trying to decide between some of the alternative parsing rules.
        Specifically, if the current token is an identifier, the routing must
        distinguish between a variable, an array entry, and a subroutine call.
        A single look-ahead token, which may be one of "[", "(", or "." suffices
        to distinguish between the three possibilities. Any other token is not
        part of this term and should not be advanced over.
        """
        type = self.__tokens.token_type()
        # self.__tokens.advance()
        if type == 'INT_CONST':
            self.__writer.write_push('CONST',
                                     int(self.__tokens.current_token()))
            self.__tokens.advance()
        elif type == 'STRING_CONST':
            self.compile_string()
            self.__tokens.advance()
        elif type == 'KEYWORD':
            curr = self.__tokens.current_token()
            if curr == 'null' or curr == 'false':
                self.__writer.write_push('CONST', 0)
            elif curr == 'this':
                self.__writer.write_push('POINTER', 0)
            elif curr == 'true':
                self.__writer.write_push('CONST', 0)
                self.__writer.write_arithmetic('not')
            self.__tokens.advance()
        elif type == 'IDENTIFIER':
            # self.__tokens.advance()
            name = self.__tokens.current_token()
            self.__tokens.advance()
            symbol = self.__tokens.current_token()
            if symbol == '[':
                # self.__tokens.advance()
                self.compile_array(name)
                #     pop pointer 1
                # push that 0
                self.__writer.write_pop('POINTER', 1)
                self.__writer.write_push('THAT', 0)
            elif symbol == '(':
                self.__tokens.advance()
                self.compile_subroutine_call(name)
                self.__tokens.advance()
            elif symbol == '.':
                self.__tokens.advance()
                self.compile_dot(name)
                # self.__tokens.advance()
            elif symbol in OP:
                self.__tokens.advance()
                self.__writer.write_push(self.__tables.kind_of(name),
                                         self.__tables.index_of(name))
                self.compile_expression()
                if symbol in OP_CALL:
                    self.__writer.write_call(OP_CALL[symbol], 2)
                    # self.__tokens.advance()
                else:
                    self.__writer.write_arithmetic(OP[symbol])
            else:  # symbol == ')' | ']'
                self.__writer.write_push(self.__tables.kind_of(name),
                                         self.__tables.index_of(name))
                # if symbol == ']':
                #     self.__tokens.advance()
                # self.__tokens.advance()
        elif type == 'SYMBOL':
            sym = self.__tokens.current_token()
            if sym == '(':
                self.__tokens.advance()
                self.compile_expression()
                self.__tokens.advance()
            elif sym == '=':
                self.__tokens.advance()
                # self.__writer.write_push(self.__tables.kind_of(name),
                #                          self.__tables.index_of(name))
                self.compile_expression()
                # self.__tokens.advance()
                # //////////////
                # self.__writer.write_arithmetic(OP[sym])
            elif sym in UNARY_OP:
                op = self.__tokens.current_token()
                self.__tokens.advance()
                self.compile_term()
                self.__writer.write_arithmetic(UNARY_OP[op])
            elif sym == ';':
                self.__tokens.advance()

    def compile_expression_list(self) -> int:
        """Compiles a (possibly empty) comma-separated list of expressions."""
        if self.__tokens.token_type() == 'SYMBOL' and \
                self.__tokens.current_token() == ')':
            return 0
        self.compile_expression()
        count = 1
        while self.__tokens.current_token() == ',':
            self.__tokens.advance()
            self.compile_expression()
            count += 1
        return count

    def compile_subroutine_call(self, name):
        counter = 0
        if self.__curr_subroutine != 'function':
            self.__writer.write_push('POINTER', 0)
            counter += 1
        self.__tokens.advance()
        # self.__tokens.advance()
        counter = self.compile_parameters(counter)
        self.__writer.write_call(self.__curr_class_name + '.' + name, counter)
        self.__tokens.advance()
        self.__tokens.advance()

    def compile_dot(self, type):
        name = self.__tokens.current_token()
        func = type + "." + name
        self.__tokens.advance()
        self.__tokens.advance()
        counter = 0
        if self.__tables.kind_of(type) is not None:
            self.__writer.write_push(self.__tables.kind_of(type),
                                     self.__tables.index_of(type))
            func = self.__tables.type_of(type) + "." + name
            # self.__tokens.advance()
            # self.__tokens.advance()
            counter += 1
        counter += self.compile_parameters(0)
        # if (self.__tables.var_count(name) is not None):
        #     self.__writer.write_push(self.__tables.kind_of(name),
        #                              self.__tables.index_of(name))
        self.__writer.write_call(func, counter)
        self.__tokens.advance()

    def compile_string(self):
        string = self.__tokens.current_token()
        length = len(string)
        self.__writer.write_push('CONST', length)
        self.__writer.write_call('String.new', 1)
        for char in string:
            self.__writer.write_push('CONST', ord(char))
            self.__writer.write_call('String.appendChar', 2)

    def compile_array(self, name):
        self.__tokens.advance()
        self.compile_expression()
        self.__writer.write_push(self.__tables.kind_of(name),
                                 self.__tables.index_of(name))
        self.__writer.write_arithmetic('add')
        self.__tokens.advance()
        # self.compile_term()
        # self.__tokens.advance()

    def compile_parameters(self, counter) -> int:
        while self.__tokens.current_token() != ')':
            counter += 1
            self.compile_term()
            while self.__tokens.current_token() in OP:
                op = self.__tokens.current_token()
                self.__tokens.advance()
                self.compile_term()
                if op in OP_CALL:
                    self.__writer.write_call(OP_CALL[op], 2)
                    # self.__tokens.advance()
                else:
                    self.__writer.write_arithmetic(OP[op])
            if self.__tokens.current_token() == ',':
                self.__tokens.advance()
            # self.__tokens.advance()
        return counter

    def compile_args(self):
        while self.__tokens.current_token() != ')':
            t = self.__tokens.current_token()
            self.__tokens.advance()
            self.__tables.define(self.__tokens.current_token(), t, 'ARG')
            self.__tokens.advance()
            curr = self.__tokens.current_token()
            if curr == ')':
                break
            if curr == ',':
                self.__tokens.advance()
