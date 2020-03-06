import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    key_actual = None
    numero_actual = ""
    for line in sys.stdin:
        tmp, key, value = line.split("\t")
        value = value.strip()
        if key_actual == key:
            numero_actual = "{},{}".format(numero_actual, value)
        else:
            if key_actual is not None:
                print("{}\t{}".format(key_actual, numero_actual))
            key_actual = key
            numero_actual = value
    print("{}\t{}".format(key_actual, numero_actual))