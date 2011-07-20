describe('Cheque por extenso', function () {
    describe('deve transformar uma string em valor', function () {
        it('unidade', function () {
            expect(toNumber('um real')).toEqual(1);
            expect(toNumber('dois reais')).toEqual(2);
            expect(toNumber('três reais')).toEqual(3);
            expect(toNumber('quatro reais')).toEqual(4);
            expect(toNumber('cinco reais')).toEqual(5);
            expect(toNumber('seis reais')).toEqual(6);
            expect(toNumber('sete reais')).toEqual(7);
            expect(toNumber('oito reais')).toEqual(8);
            expect(toNumber('nove reais')).toEqual(9);
        });

        it('dezena', function () {
            expect(toNumber('dez reais')).toEqual(10);
            expect(toNumber('vinte e um reais')).toEqual(21);
            expect(toNumber('trinta e dois reais')).toEqual(32);
            expect(toNumber('quarenta e três reais')).toEqual(43);
            expect(toNumber('cinquenta e quatro reais')).toEqual(54);
            expect(toNumber('sessenta e cinco reais')).toEqual(65);
            expect(toNumber('setenta e seis reais')).toEqual(76);
            expect(toNumber('oitenta e sete reais')).toEqual(87);
            expect(toNumber('noventa e oito reais')).toEqual(98);
            expect(toNumber('noventa e nove reais')).toEqual(99);
        });

        it('centena', function () {
            expect(toNumber('cem reais')).toEqual(100);
            expect(toNumber('cento e dez reais')).toEqual(110);
            expect(toNumber('cento e dezoito reais')).toEqual(118);
            expect(toNumber('duzentos e vinte e dois reais')).toEqual(222);
            expect(toNumber('cento e trinta e quatro reais')).toEqual(134);
            expect(toNumber('trezentos e quarenta e cinco reais')).toEqual(345);
            expect(toNumber('quatrocentos e cinco reais')).toEqual(405);
            expect(toNumber('quinhentos e sessenta e sete reais')).toEqual(567);
            expect(toNumber('seiscentos e setenta e oito reais')).toEqual(678);
            expect(toNumber('setecentos e oitenta e nove reais')).toEqual(789);
            expect(toNumber('oitocentos e noventa e um reais')).toEqual(891);
            expect(toNumber('novecentos e noventa e nove reais')).toEqual(999);
        });

        it('milhar', function () {
            expect(toNumber('mil e dois reais')).toEqual(1002);
            expect(toNumber('dois mil novecentos e trinta e cinco reais')).toEqual(2935);
            expect(toNumber('vinte e dois mil e quarenta e oito reais')).toEqual(22048);
            expect(toNumber('quatrocentos e sete mil reais')).toEqual(407000);
            expect(toNumber('seiscentos e quatro mil e vinte e três reais')).toEqual(604023);
        });

        it('com centavos', function () {
            expect(toNumber('um centavo')).toEqual(0.01);
            expect(toNumber('oito reais e dez centavos')).toEqual(8.10);
            expect(toNumber('noventa reais e oitenta e dois centavos')).toEqual(90.82);
        });
    });
});

