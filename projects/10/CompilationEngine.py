"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import typing
from JackTokenizer import JackTokenizer

OP = {'+', '-', '*', '/', '|', '=', '^', '#', '&lt;', '&gt;', '&amp;'}
UNARY_OP = {'-', '~'}

TYPES = {'KEYWORD': 'keyword', 'IDENTIFIER': 'identifier', 'SYMBOL': 'symbol',
         'INT_CONST': 'integerConstant', 'STRING_CONST': 'stringConstant'}


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
        self.__tokenizer = input_stream
        self.__output = output_stream

    def advance(self) -> None:
        type = self.__tokenizer.token_type()
        s = TYPES[type]
        if type == 'KEYWORD':
            token = self.__tokenizer.keyword()
        elif type == 'IDENTIFIER':
            token = self.__tokenizer.identifier()
        elif type == 'SYMBOL':
            token = self.__tokenizer.symbol()
        elif type == 'INT_CONST':
            token = self.__tokenizer.int_val()
        else:  # type == 'STRING_CONST'
            token = self.__tokenizer.string_val()
        self.__output.write('<' + s + '> ' + token + ' </' + s + '>\n')
        if self.__tokenizer.has_more_tokens():
            self.__tokenizer.advance()

    def compile_class(self) -> None:
        """Compiles a complete class."""
        self.__output.write('<class>\n')
        self.advance()
        self.advance()
        self.advance()
        while self.__tokenizer.token_type() != 'SYMBOL':
            if self.__tokenizer.keyword() == 'static' or \
                    self.__tokenizer.keyword() == 'field':
                self.compile_class_var_dec()
            else:
                self.compile_subroutine()
        self.advance()
        self.__output.write('</class>\n')

    def compile_class_var_dec(self) -> None:
        """Compiles a static declaration or a field declaration."""
        self.__output.write('<classVarDec>\n')
        self.advance()
        self.advance()
        self.advance()
        while self.__tokenizer.symbol() == ',':
            self.advance()
            self.advance()
        self.advance()
        self.__output.write('</classVarDec>\n')

    def compile_subroutine(self) -> None:
        """Compiles a complete method, function, or constructor."""
        self.__output.write('<subroutineDec>\n')
        self.advance()
        self.advance()
        self.advance()
        self.advance()
        self.compile_parameter_list()
        self.advance()
        self.__output.write('<subroutineBody>\n')
        self.advance()
        while self.__tokenizer.token_type() == 'KEYWORD' and \
                self.__tokenizer.keyword() == 'var':
            self.compile_var_dec()
        self.compile_statements()
        self.advance()
        self.__output.write('</subroutineBody>\n')
        self.__output.write('</subroutineDec>\n')

    def compile_parameter_list(self) -> None:
        """Compiles a (possibly empty) parameter list, not including the
        enclosing "()".
        """
        """Compiles a complete method, function, or constructor."""
        self.__output.write('<parameterList>\n')
        if self.__tokenizer.token_type() != 'SYMBOL':
            self.advance()
            self.advance()
            while self.__tokenizer.symbol() == ',':
                self.advance()
                self.advance()
                self.advance()
        self.__output.write('</parameterList>\n')

    def compile_var_dec(self) -> None:
        """Compiles a var declaration."""
        self.__output.write('<varDec>\n')
        self.advance()
        self.advance()
        self.advance()
        while self.__tokenizer.symbol() == ',':
            self.advance()
            self.advance()
        self.advance()
        self.__output.write('</varDec>\n')

    def compile_statements(self) -> None:
        """Compiles a sequence of statements, not including the enclosing
        "{}".
        """
        self.__output.write('<statements>\n')
        while self.__tokenizer.token_type() == 'KEYWORD':
            keyword = self.__tokenizer.keyword()
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
        self.__output.write('</statements>\n')

    def compile_do(self) -> None:
        """Compiles a do statement."""
        self.__output.write('<doStatement>\n')
        self.advance()
        self.advance()
        if self.__tokenizer.symbol() == '.':
            self.advance()
            self.advance()
        self.advance()
        self.compile_expression_list()
        self.advance()
        self.advance()
        self.__output.write('</doStatement>\n')

    def compile_let(self) -> None:
        """Compiles a let statement."""
        self.__output.write('<letStatement>\n')
        self.advance()
        self.advance()
        if self.__tokenizer.symbol() == '[':
            self.advance()
            self.compile_expression()
            self.advance()
        self.advance()
        self.compile_expression()
        self.advance()
        self.__output.write('</letStatement>\n')

    def compile_while(self) -> None:
        """Compiles a while statement."""
        self.__output.write('<whileStatement>\n')
        self.advance()
        self.advance()
        self.compile_expression()
        self.advance()
        self.advance()
        self.compile_statements()
        self.advance()
        self.__output.write('</whileStatement>\n')

    def compile_return(self) -> None:
        """Compiles a return statement."""
        self.__output.write('<returnStatement>\n')
        self.advance()
        if self.__tokenizer.token_type() != 'SYMBOL':
            self.compile_expression()
        self.advance()
        self.__output.write('</returnStatement>\n')

    def compile_if(self) -> None:
        """Compiles a if statement, possibly with a trailing else clause."""
        self.__output.write('<ifStatement>\n')
        self.advance()
        self.advance()
        self.compile_expression()
        self.advance()
        self.advance()
        self.compile_statements()
        self.advance()
        if self.__tokenizer.token_type() == 'KEYWORD' and \
                self.__tokenizer.keyword() == 'else':
            self.advance()
            self.advance()
            self.compile_statements()
            self.advance()
        self.__output.write('</ifStatement>\n')

    def compile_expression(self) -> None:
        """Compiles an expression."""
        self.__output.write('<expression>\n')
        self.compile_term()
        while self.__tokenizer.token_type() == 'SYMBOL' and \
                self.__tokenizer.symbol() in OP:
            self.advance()
            self.compile_term()
        self.__output.write('</expression>\n')

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
        self.__output.write('<term>\n')
        type = self.__tokenizer.token_type()
        if type == 'INT_CONST' or type == 'STRING_CONST' or \
                type == 'KEYWORD' or type == 'IDENTIFIER':
            self.advance()
            if self.__tokenizer.symbol() == '[':
                self.advance()
                self.compile_expression()
                self.advance()
            elif self.__tokenizer.symbol() == '(':
                self.advance()
                self.compile_expression_list()
                self.advance()
            elif self.__tokenizer.symbol() == '.':
                self.advance()
                self.advance()
                self.advance()
                self.compile_expression_list()
                self.advance()
        elif type == 'SYMBOL':
            sym = self.__tokenizer.symbol()
            if sym in UNARY_OP:
                self.advance()
                self.compile_term()
            elif sym == '(':
                self.advance()
                self.compile_expression()
                self.advance()
        self.__output.write('</term>\n')

    def compile_expression_list(self) -> None:
        """Compiles a (possibly empty) comma-separated list of expressions."""
        self.__output.write('<expressionList>\n')
        if self.__tokenizer.token_type() == 'SYMBOL' and \
                self.__tokenizer.symbol() == ')':
            self.__output.write('</expressionList>\n')
            return
        self.compile_expression()
        while self.__tokenizer.symbol() == ',':
            self.advance()
            self.compile_expression()
        self.__output.write('</expressionList>\n')
