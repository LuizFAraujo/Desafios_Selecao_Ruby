# Mapa do tesouro

Renan estava passando as férias numa ilha paradisíaca e encontrou, na praia, uma
garrafa com um mapa! Ao analisá-lo, reparou que não havia nenhuma marcação, mas 
no verso do papel encontrou algumas sequências de números.

Lendo esses números com atenção, Renan reparou que eles poderiam ser coordenadas
indicando a posição de um tesouro! Mas não seria tão simples descobrir o local
exato dele... As sequências de números pareciam indicar várias linhas espalhadas
pela ilha.

A sequência de numeros aparecia dessa maneira no verso do mapa:

```
"0131|2023|2131|0323"
```

Se cada conjunto de 4 números fosse separado em duplas de coordenadas como
`[0,1][3,1]` para o primeiro, poderia ser traçada uma linha ligando
esses dois pontos, **passando** pelas coordenadas `[0,1][1,1][2,1][3,1]`. Plotando
essas posições em um esquema onde o número indica a quantidade de linhas que
passa por cada ponto, teríamos:

```
0 1 0 0
0 1 0 0
0 1 0 0
0 1 0 0
```

Fazendo o mesmo para cada conjunto, teríamos um mapa de posições por onde as linhas
passam.

```
0 1 0 1
0 1 0 1
1 3 1 2
0 2 0 0
```

Renan logo percebeu que o ponto onde o maior número de linhas passa, nas
coordenadas `[2, 1]`, com 3 linhas, poderia ser a indicação de onde se encontra
o tesouro.

Neste desafio, você deve implementar o código do algoritmo que recebe uma
sequência de coordenadas e descobre as posições onde o maior número de linhas se
sobrepõem para descobrir a localização dos tesouros. Quando houver mais de um
tesouro, retorne as coordenadas em ordem crescente. Você pode utilizar o método
[`sort`](https://ruby-doc.org/core/Array.html#method-i-sort) para isso.



