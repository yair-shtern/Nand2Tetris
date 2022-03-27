"""This file is part of nand2tetris, as taught in The Hebrew University,
and was written by Aviv Yaish according to the specifications given in  
https://www.nand2tetris.org (Shimon Schocken and Noam Nisan, 2017)
and as allowed by the Creative Common Attribution-NonCommercial-ShareAlike 3.0 
Unported License (https://creativecommons.org/licenses/by-nc-sa/3.0/).
"""

KINDS = {'STATIC': 'static', 'FIELD': 'field',
         'ARG': 'argument', 'VAR': 'local'}


class SymbolTable:
    """A symbol table that associates names with information needed for Jack
    compilation: type, kind and running index. The symbol table has two nested
    scopes (class/subroutine).
    """

    def __init__(self) -> None:
        """Creates a new empty symbol table."""
        self.__class_table = {"STATIC": {}, "FIELD": {}}
        self.__subroutine_table = {"ARG": {}, "VAR": {}}
        self.__indexes_table = {"STATIC": 0, "FIELD": 0, "ARG": 0, "VAR": 0}
        self.__if_counter = 0
        self.__while_counter = 0

    def start_subroutine(self) -> None:
        """Starts a new subroutine scope (i.e., resets the subroutine's 
        symbol table).
        """
        self.__subroutine_table = {"ARG": {}, "VAR": {}}
        self.__indexes_table["ARG"] = 0
        self.__indexes_table["VAR"] = 0

    def define(self, name: str, type: str, kind: str) -> None:
        """Defines a new identifier of a given name, type and kind and assigns 
        it a running index. "STATIC" and "FIELD" identifiers have a class scope, 
        while "ARG" and "VAR" identifiers have a subroutine scope.

        Args:
            name (str): the name of the new identifier.
            type (str): the type of the new identifier.
            kind (str): the kind of the new identifier, can be:
            "STATIC", "FIELD", "ARG", "VAR".
        """
        index = self.__indexes_table[kind]
        if kind in self.__subroutine_table:
            self.__subroutine_table[kind][name] = (type, index)
        else:  # kind in self.__class_table:
            self.__class_table[kind][name] = (type, index)
            # for example:
            # {"ARG" : {ax: (int, 0) as: (string, 1)},
            #  "VAR" : {x: (int, 0) s: (string, 1)}}
        self.__indexes_table[kind] += 1

    def var_count(self, kind: str):
        """
        Args:
            kind (str): can be "STATIC", "FIELD", "ARG", "VAR".

        Returns:
            int: the number of variables of the given kind already defined in
            the current scope.
        """
        if kind in KINDS:
            return self.__indexes_table[kind]
        else:
            return None

    def kind_of(self, name: str):
        """
        Args:
            name (str): name of an identifier.

        Returns:
            str: the kind of the named identifier in the current scope, or None
            if the identifier is unknown in the current scope.
        """
        for kind in self.__subroutine_table:
            if name in self.__subroutine_table[kind]:
                if kind == 'VAR':
                    kind = 'LOCAL'
                return kind
        for kind in self.__class_table:
            if name in self.__class_table[kind]:
                return kind
        return None

    def type_of(self, name: str) -> str:
        """
        Args:
            name (str):  name of an identifier.

        Returns:
            str: the type of the named identifier in the current scope.
        """
        for kind in self.__subroutine_table:
            if name in self.__subroutine_table[kind]:
                return self.__subroutine_table[kind][name][0]
        for kind in self.__class_table:
            if name in self.__class_table[kind]:
                return self.__class_table[kind][name][0]

    def index_of(self, name: str) -> int:
        """
        Args:
            name (str):  name of an identifier.

        Returns:
            int: the index assigned to the named identifier.
        """
        for kind in self.__subroutine_table:
            if name in self.__subroutine_table[kind]:
                return self.__subroutine_table[kind][name][1]
        for kind in self.__class_table:
            if name in self.__class_table[kind]:
                return self.__class_table[kind][name][1]

    def get_while_counter(self) -> int:
        return self.__while_counter

    def get_if_counter(self) -> int:
        return self.__if_counter

    def set_while_counter(self, i: int) -> None:
        self.__while_counter += i

    def set_if_counter(self, i: int) -> None:
        self.__if_counter += i
