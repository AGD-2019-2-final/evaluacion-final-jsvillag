#!/usr/bin/env python3

import sys

##
## Esta funcion reduce los elementos que
## tienen la misma clave
##

if __name__ == "__main__":
    curkey = None
    minimo=0
    maximo= 0
    for line in sys.stdin:
        key, value = line.split("\t")
        value = float(value)
        if curkey == key:
            minimo = value if value < minimo else minimo
            maximo = value if value > maximo else maximo
        else:
            if curkey is not None:
                print("{}\t{}\t{}".format(curkey, maximo, minimo))
            curkey = key
            minimo = value
            maximo = value
    print("{}\t{}\t{}".format(curkey, maximo, minimo))
