Dojo UENF [3]
=============

Problema: Lâmpadas no corredor
------------------------------

Um homem chamado José é o responsável por ligar e desligar as luzes do corredor
em nossa universidade. Cada lâmpadas tem seu próprio interruptor que troca o
estado da luz. Se a luz esta apagada, apertando o interruptor ela passa a estar
ligada. Apertando novamente ela erá desligar. Inicialmente todas as lâmpadas
estão desligadas.

José faz uma coisa peculiar, Se tem *n* lâmpadas no corredor, ele caminha até
o fim do corredor e volta *n* vezes. Na *i*ésima caminhada, ele aperta apenas os
interruptores aos quais sua posição é divisível por *i*. Ele não aperta nenhum
interruptor na volta à sua posição inicial, apenas na ida. A *i*ésima caminhada
é definida como ir ao fim do corredor e voltar.

Determine qual é o estado final de cada lâmpada. Está ligada ou desligada?

### *Entrada*

A entrada será um inteiro indicando o número de lâmpadas no corredor. Zero
indica o fim da entrada e não deve ser processado.

### *Saída*

A saída deve indicar o estado, ligada ou desligada, das lâmpadas.

### *Exemplo de entrada*

3

### *Exemplo de saída*

[on, off, off]


**Obs.:** Este problema foi baseado no problema "Ligth, More Ligth" do livro
*Programming Challenges* de *Steven S. Skiena* e *Miguel A. Revilla*.

Participantes
-------------

* Eduardo Hertz
* Herond Salles
* Hugo Maia Vieira
* Mayra Santana
* Rodrigo Manhães
* Sânya Carvalho

Observação
----------

O arquivo __dojo.rb deriva de uma discussão que tivemos, levantada por Rodrigo,
de como os testes deveriam se escritos. O relato da discussão está no próprio
arquivo.

<!--![Foto do dia 20/04/2010]()-->

