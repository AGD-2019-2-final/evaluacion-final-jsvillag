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
        
        splits = line.split(",")
        
        purpose = splits[3]
        amount = splits[4]
        print(purpose + '\t' + amount)
