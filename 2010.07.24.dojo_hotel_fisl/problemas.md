Problemas do Code Golfe da IG
==========================

1. Dado o número de iterações exibir a sequência de Fibonacci até aquela iteração
Exemplo:
entrada: 6
saida: 1, 1, 2, 3, 5, 8

2. Dado uma frase retornar se é um palíndrome ou não e listar os caracteres em ordem decrescente de número de incidências na mesma
Exemplo:
entrada: “A mala nada na lama”
saída:
Palíndrome
8 a
2 m
2 n
2 l
1 d

entrada: “ig no fisl”
saída:
Não é Palíndrome
2 i
1 g
1 f
1 n
1 o
1 s
1 l

update: adição de exemplo

3. Dado um endereço IP e uma máscara de rede, retornar o endereço de broadcast e a conotação CIDR da rede
Exemplo:
entrada: 201.94.10.19 255.255.255.0
saída: 201.94.10.255 /24

4. Dados dois números naturais m e n e duas sequências ordenadas com m e n números inteiros, obter uma única sequência ordenada contendo todos os elementos das sequências originais sem repetição.
Sugestão: Imagine uma situação real, por exemplo, dois fichários de uma biblioteca.
Update: as duas sequencias são passadas como input e tem seus elementos separados por virgulas
Exemplo de entrada: 1,5,6,10,12 2,5,9,29

5. Escreva uma função que recebe uma matriz de caracteres 8×8 representando um tabuleiro de xadrez e calcula o valor total das peças do jogo. Espaços vazios do tabuleiro são codificados como casas com ‘v’ e têm valor 0 (zero). O valor das demais peças é dado de acordo com a tabela:

Peça Valor
peão 1
cavalo 3
bispo 3
torre 5
rainha 10
rei 50

Update: Confome solicitado detalhamos mais as entradas do exercicio, qualquer duvida por favor use os comentarios e boa sorte

As representações no tabuleiro, serão com a primeira letra da peça somente a rainha será identificada pela letra ‘a’

peão: p
cavalo: c
bispo: b
torre: t
rainha: a
rei: r
vazio: v

Tabuleiro Completo, valendo 180 pontos

>8————————-
tcbarbct
pppppppp
vvvvvvvv
vvvvvvvv
vvvvvvvv
vvvvvvvv
pppppppp
tcbarbct
>8————————-

Tabuleiro com 179 pontos:

>8————————-
tbcarcbt
pvvpvvvv
vppvpppv
vvvvvpvv
vppvvpvv
pvvppvpv
vvvvvvvv
tbcarcbt
>8————————-

