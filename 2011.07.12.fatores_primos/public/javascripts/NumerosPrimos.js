function ehPrimo(numero) {
    if (numero == 1) return false;
    for(var i = 2; i <= numero/2; i++) if (!(numero % i)) return false;
    return true;
}

function proximoPrimo(numero) {
    if (!numero) return 2;
    while (true) if (ehPrimo(++numero)) return numero;
}

function fatoresPrimos(numero) {
    var fatores_primos = [],
        primo_da_vez = proximoPrimo();

    while(numero != 1) {
        while (numero % primo_da_vez == 0) {
            numero = numero / primo_da_vez;
            fatores_primos.push(primo_da_vez);
        }
        primo_da_vez = proximoPrimo(primo_da_vez);
    }
    return fatores_primos;
}

