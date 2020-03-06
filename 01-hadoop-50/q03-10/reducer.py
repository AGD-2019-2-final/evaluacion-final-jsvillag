#!/usr/bin/env python3

import sys

##
## Esta funcion reduce los elementos que
## tienen la misma clave
##

if __name__ == '__main__':

    for line in sys.stdin:
        line = line.strip()
        splits = line.split("\t")
        sys.stdout.write("{},{}\n".format(splits[1], splits[0]))
