describe("Números Primos", function() {
    it("deve verificar se um número é primo", function() {
        expect(ehPrimo(2)).toBeTruthy();
        expect(ehPrimo(3)).toBeTruthy();
        expect(ehPrimo(5)).toBeTruthy();
        expect(ehPrimo(7)).toBeTruthy();
        expect(ehPrimo(13)).toBeTruthy();
    });

    it("deve verificar se um número não é primo", function() {
        expect(ehPrimo(1)).toBeFalsy();
        expect(ehPrimo(4)).toBeFalsy();
        expect(ehPrimo(6)).toBeFalsy();
        expect(ehPrimo(8)).toBeFalsy();
        expect(ehPrimo(9)).toBeFalsy();
    });

    it("deve retornar o próximo primo", function() {
        expect(proximoPrimo()).toBe(2);
        expect(proximoPrimo(2)).toBe(3);
        expect(proximoPrimo(3)).toBe(5);
        expect(proximoPrimo(5)).toBe(7);

    });

    it("deve retornar os fatores primos de um número", function() {
        expect(fatoresPrimos(7)).toEqual([7]);
        expect(fatoresPrimos(4)).toEqual([2, 2]);
        expect(fatoresPrimos(6)).toEqual([2, 3]);
        expect(fatoresPrimos(12)).toEqual([2, 2, 3]);
        expect(fatoresPrimos(100)).toEqual([2, 2, 5, 5]);
        expect(fatoresPrimos(198)).toEqual([2, 3, 3, 11]);
        expect(fatoresPrimos(276)).toEqual([2, 2, 3, 23]);
    });
});

