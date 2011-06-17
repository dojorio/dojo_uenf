from fizz_buzz import fizzbuzz

while True:
    entrada = raw_input('Entre com o numero: ')
    try:
        numero = int(entrada)
        print fizzbuzz(numero)
    except ValueError:
        exit(0)

