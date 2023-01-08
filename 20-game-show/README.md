# Caixa da sorte

Um determinado canal de TV tem um show bastante popular, pois permite que participantes liguem para o programa em um segmento específico com a oportunidade de ganhar prêmios em dinheiro. Esse segmento consiste de um jogo que envolve um conjunto de números pré-determinado colocado dentro de caixas (um por caixa). Um participante que consegue se conectar ao programa deve acertar em qual das caixas se encontra o maior número. Para isso, o participante dispõe de algumas informações:

No momento em que o programa começa, os números em todas as caixas são revelados. A partir daí, os números nas caixas são alterados, a cada minuto (e todos ao mesmo tempo), da seguinte forma:

- Um número em uma caixa de número ímpar é reduzido pela metade e esse valor resultante é somado ao valor da caixa ímpar seguinte. A última caixa de número ímpar deve ter metade de seu número transferido para a primeira caixa;

- Um número em uma caixa de número par é reduzido em metade de seu valor e esse valor resultante é somado ao valor da caixa de número par anterior. A primeira caixa de número par deve ter metade de seu valor transferido para a última caixa;

Você logo percebe que esse jogo pode ser traduzido em um algoritmo de forma que você sempre saiba qual a caixa que possui o número de maior valor.

Neste desafio, você deve implementar esse algoritmo que, dado o conjunto de números revelados no início do programa `numbers` e a quantidade de minutos passados até o momento em que você é atendido `minutes`, determina qual a caixa que possui o maior número e qual o valor correspondente. Note que, em caso de empate, seu algoritmo deve retornar um array com todas as caixas que possuem o maior número.

# Exemplo

Suponha uma chamada do algoritmo com os seguintes dados:

```ruby
numbers = [2, 3, 4, 5, 6]
minutes = 1
```

A distribuição dos números das caixas, então, pode ser vista como:

  |       |    |    |    |    |   |
  | ----- | -- | -- | -- | -- | --|
  |Caixa  |  1 | 2  |  3 |  4 | 5 |
  |Número |  2 | 3  |  4 |  5 | 6 |
  | | | | | | |

Nesse caso, quando formos atendidos, 1 minuto terá se passado e, portanto, os números da caixa terão mudado. De acordo com as regras acima, todos os números são divididos em sua metade (usando uma divisão inteira) e, portanto, os números dentro da caixa se encontram da forma:

```ruby
changed_numbers = [1, 1, 2, 2, 3]
```

Pois 2/2 == 1, 3/2 == 1, 4/2 == 2, 5/2 == 2 e 6/2 == 3. Além desses números serem reduzidos à metade, agora precisamos somar os valores resultantes entre as caixas. Uma caixa de número ímpar tem seu valor somado à caixa ímpar seguinte e, daí, o número na caixa 1 é adicionado ao número da caixa 3, o número na caixa 3 é adicionado ao número da caixa 5 e o número na caixa 5 é adicionado ao número da caixa 1. Uma caixa de número par tem seu valor somado à caixa par anterior, então o número na caixa 2 é adicionado ao número da caixa 4 e o número na caixa 4 é adicionado ao número da caixa 2. Ao fazer essas operações, as caixas recebem os seguintes números:

```ruby
resulting_numbers = [4,3,3,3,5]
```

A partir daí, a caixa com o maior número é a caixa 5 e seu valor também é 5.

# Observação

Nesse desafio, considere que 'reduzir um número à sua metade' é o ato de realizar a divisão inteira desse número por 2. Ou seja, a "metade" de 5, dado por 5/2, resulta em 2.
