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
        credit_history = ""
        
        splits = line.split(",")
        
        credit_history = splits[2]
        print(credit_history + '\t1')
