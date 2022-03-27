"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""
import os
import sys
import typing
from SymbolTable import SymbolTable
from Parser import Parser
from Code import Code


def assemble_file(
        input_file: typing.TextIO, output_file: typing.TextIO) -> None:
    """Assembles a single file.

    Args:
        input_file (typing.TextIO): the file to assemble.
        output_file (typing.TextIO): writes all output to this file.
    """
    table = SymbolTable()
    parser = Parser(input_file)
    _first_pass(parser, table)

    code_lines = []
    code = Code()
    _second_pass(code, code_lines, parser, table)

    for i in range(len(code_lines)):
        output_file.write(code_lines[i] + '\n')


def _second_pass(code, code_lines, parser, table):
    n = 16
    while parser.has_more_commands():
        parser.advance()
        cmd_type = parser.command_type()
        if cmd_type == 'A_COMMAND':
            a_cmd = parser.symbol()
            if not a_cmd.isnumeric():
                if not table.contains(a_cmd):
                    table.add_entry(a_cmd, n)
                    n += 1
                a_cmd = table.get_address(a_cmd)
            else:
                a_cmd = int(a_cmd)
            bin_a_cmd = bin(a_cmd).zfill(16).replace('b', '0')
            code_lines.append(bin_a_cmd[-16:])

        elif cmd_type == 'C_COMMAND':
            # it`s c command
            c_cmd = '111'
            comp = parser.comp()
            dest = parser.dest()
            jump = parser.jump()
            if '<<' in comp or '>>' in comp:
                c_cmd = '101'
            c_cmd += code.comp(comp) + code.dest(dest) + code.jump(jump)
            code_lines.append(c_cmd)


def _first_pass(parser, table):
    i = 0
    while parser.has_more_commands():
        parser.advance()
        cmd_type = parser.command_type()
        if cmd_type == 'L_COMMAND':
            l_cmd = parser.symbol()
            if not table.contains(l_cmd):
                table.add_entry(l_cmd, i)
        else:
            i += 1


if "__main__" == __name__:
    # Parses the input path and calls assemble_file on each input file
    if not len(sys.argv) == 2:
        sys.exit("Invalid usage, please use: Assembler <input path>")
    argument_path = os.path.abspath(sys.argv[1])
    if os.path.isdir(argument_path):
        files_to_assemble = [
            os.path.join(argument_path, filename)
            for filename in os.listdir(argument_path)]
    else:
        files_to_assemble = [argument_path]
    for input_path in files_to_assemble:
        filename, extension = os.path.splitext(input_path)
        if extension.lower() != ".asm":
            continue
        output_path = filename + ".hack"
        with open(input_path, 'r') as input_file, \
                open(output_path, 'w') as output_file:
            assemble_file(input_file, output_file)
