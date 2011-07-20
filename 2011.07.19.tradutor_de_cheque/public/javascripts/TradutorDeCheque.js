function toNumber (numero_por_extenso) {
    var valores = {
        'reais' : 0, 'real' : 0, 'e' : 0, 'centavos' : 0, 'centavo' : 0,
        'um' : 1, 'dois' : 2, 'três' : 3, 'quatro' : 4, 'cinco' : 5, 'seis' : 6,
        'sete' : 7, 'oito' : 8, 'nove' : 9, 'dez' : 10, 'onze' : 11, 'doze' : 12,
        'treze' : 13, 'quatorze' : 14, 'quinze' : 15, 'dezesseis' : 16,
        'dezessete' : 17, 'dezoito' : 18, 'dezenove' : 19, 'vinte' : 20,
        'trinta' : 30, 'quarenta' : 40, 'cinquenta' : 50, 'sessenta' : 60,
        'setenta' : 70, 'oitenta' : 80, 'noventa' : 90, 'cem' : 100,
        'cento' : 100, 'duzentos' : 200, 'trezentos' : 300, 'quatrocentos' : 400,
        'quinhentos' : 500, 'seiscentos' : 600, 'setecentos' : 700,
        'oitocentos' : 800, 'novecentos' : 900, 'mil' : 1000
    };

    var resultado = 0;
    var vetor_de_palavras = numero_por_extenso.split(' ');
    var flag_centavos = function(){
        return !(vetor_de_palavras.indexOf('reais') != -1 ||
                 vetor_de_palavras.indexOf('real') != -1);
    }();

    for (var i=0; i < vetor_de_palavras.length; i++) {
        if (vetor_de_palavras[i] == 'mil' && i != 0)
            resultado *= 1000;
        else
            if (!flag_centavos)
                resultado += valores[vetor_de_palavras[i]];
            else
                resultado += valores[vetor_de_palavras[i]] / 100.0;

        if (vetor_de_palavras[i] == 'reais' || vetor_de_palavras[i] == 'real')
            flag_centavos = true;
    }

    return resultado;
}

