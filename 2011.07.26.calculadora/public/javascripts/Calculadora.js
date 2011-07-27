function resolverExpressao(expressao) {

    var expressao_dividida = dividirExpressao(expressao);
    var operador = undefined;
    var valor = 0;
    var operadores = {
        '+': function(x,y) { return x + y },
        '-': function(x,y) { return x - y },
        '*': function(x,y) { return x * y },
        '/': function(x,y) { return x / y }
    };

//    for(var c in expressao_dividida) {
//        elemento = expressao_dividida[c];
//        if (elemento.match(/[0-9]+/)){
//            if (operador) {
//                valor = operadores[operador](
//                    parseInt(valor), parseInt(elemento)
//                );
//                operador = undefined;
//            } else valor = elemento;
//        } else operador = elemento;
//    }

    for(var c in expressao_dividida) {
        operador = expressao_dividida[c];
        if (operador.match(/\*|\//)) {
            expressao_dividida[c] = operadores[operador](parseInt(expressao_dividida[c-1]), parseInt(expressao_dividida[c+1]);
        }
    }

    return valor;
}

function dividirExpressao(expressao) {
    if (!expressao) return [];
    vetor = [];
    acumulador = '';

    for (var c in expressao) {
        elemento = expressao[c];
        if (elemento != ' ')
            if (elemento.match(/\+|\*|-|\//)) {
                if (acumulador != '')
                    vetor.push(acumulador);
                vetor.push(elemento);
                acumulador = '';
            } else acumulador += elemento;
    }

    vetor.push(acumulador);

    return vetor;
}

