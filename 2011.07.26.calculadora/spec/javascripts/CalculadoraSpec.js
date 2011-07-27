describe('Calculadora', function () {
    it('dividir a expressão em um vetor', function () {
        expect(dividirExpressao('')).toEqual([]);
        expect(dividirExpressao('4')).toEqual(['4']);
        expect(dividirExpressao('4+5')).toEqual(['4', '+', '5']);
        expect(dividirExpressao('44+5')).toEqual(['44', '+', '5']);
        expect(dividirExpressao('44*55')).toEqual(['44', '*', '55']);
        expect(dividirExpressao('44-55')).toEqual(['44', '-', '55']);
        expect(dividirExpressao('44/55')).toEqual(['44', '/', '55']);
        expect(dividirExpressao('44 / 55')).toEqual(['44', '/', '55']);
        expect(dividirExpressao('-44 / 55')).toEqual(['-','44', '/', '55']);
        expect(dividirExpressao('-44 / -55')).toEqual(['-','44', '/', '-', '55']);
        expect(dividirExpressao('-44 / -55 +20')).toEqual(['-','44', '/', '-', '55', '+', '20']);
    });

    it('retornar resultado da expressão', function () {
        expect(resolverExpressao('4 + 5')).toEqual(9);
        expect(resolverExpressao('4 + 15')).toEqual(19);
        expect(resolverExpressao('4 * 1')).toEqual(4);
        expect(resolverExpressao('4 / 2')).toEqual(2);
        expect(resolverExpressao('44 + 22')).toEqual(66);
        expect(resolverExpressao('-44 + 22')).toEqual(-22);
        expect(resolverExpressao('44 + 22 - 5')).toEqual(61);
        expect(resolverExpressao('40 + 20 - 100')).toEqual(-40);
        expect(resolverExpressao('40 + 20 * 100')).toEqual(2040);
    });
});

