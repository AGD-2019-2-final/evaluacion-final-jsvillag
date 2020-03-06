import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
        
if __name__ == "__main__":
    for line in sys.stdin:
        linea = line.split("\t")
        dividir = linea[1].strip().split(",")
        numero = linea[0].strip(); number_int = int(numero)
        numero = ("0" + numero) if number_int < 10 else numero
        for key in dividir:
            print("{}{}\t{}\t{}".format(key,numero,key,str(number_int)))