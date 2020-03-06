#! /usr/bin/env python3

##
## Esta es la funcion que mapea la entrada a parejas (clave, valor)
##
import sys
if __name__ == "__main__":
    for line in sys.stdin:
        letra = line.split("   ")[0]
        value = line.split("   ")[2].strip()
        print("{}\t{}".format(letra, value))
