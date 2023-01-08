# Buscando inteiros

Neste desafio você deve implementar um código que, dada uma lista de números,
encontre o maior e o menor inteiro possível composto pelos números dessa lista. Por
exemplo, dada a lista `[15, 22, 6]`, é possível compor os seguintes números:

```
15226
15622
22156
22615
61522
62215
```

Dessa nova lista criada, o número `62215` é o maior e o número `15226` é o menor.

O seu código deve conter métodos que receberão um conjunto de *arrays* com diversos 
números e devem retornar cada um dos maiores e menores inteiros encontrados, 
conforme expectativas que você pode encontrar no arquivo de testes.

**Atenção**: este desafio pode ser resolvido com um código que lista todas as
combinações possíveis com todos os números dados no *array* e, em seguida, encontra
o maior e o menor entre eles. Apesar de funcionar, essa abordagem demora muito para 
obter a resposta, já que é necessário gerar todas as combinações possíveis. Por isso, 
dessa vez esperamos que você implemente um código que encontre esses valores da forma
mais rápida que conseguir. ;)
