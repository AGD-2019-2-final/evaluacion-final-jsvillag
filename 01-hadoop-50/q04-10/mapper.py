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
 
        
        line = line.strip()
        splits = line.split("   ")
        porpuse = splits[0]
       ## amount = splits[1]
       ## sys.stdout.write("{},\n".format(mesinteres))
        print(porpuse + '\t1')
