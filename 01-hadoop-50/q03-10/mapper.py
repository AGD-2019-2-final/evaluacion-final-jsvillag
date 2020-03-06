#! /usr/bin/env python3

##
## Esta es la funcion que mapea la entrada a parejas (clave, valor)
##
import sys
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:
        purpose = ""
        amount = ""
        
        line = line.strip()
        splits = line.split(",")
        
        purpose = splits[0]
        amount = splits[1]
        sys.stdout.write("{}\t{}\n".format(amount, purpose))
