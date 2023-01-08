# Permuta de posição de elementos

Neste desafio, você deve implementar o código que recebe um *array* com vários
elementos e uma sequência de instruções, depois executa a troca da posição dos
elementos conforme indicado nessas instruções. Veja o seguinte exemplo:

```ruby
# array recebido:

[['A', 'B', 'C'],
 ['D', 'E', 'F']] 

# instruções:

0:1<>2
^v:1
```

Aplicando a instrução `0:1<>2`, espera-se que os elementos nas posições de
índices `1` e `2` do primeiro array sejam trocados um pelo outro, ou seja, no exemplo
acima o resultado seria:

```ruby
# resultado:

[['A', 'C', 'B'],
 ['D', 'E', 'F']]
```

Em seguida, aplicando a instrução `^v:1 `, espera-se que os elementos na posição 1 de
cada um dos arrays sejam trocados um pelo outro. No exemplo acima, o resultado seria:

```ruby
# resultado:

[['A', 'E', 'B'],
 ['D', 'C', 'F']]
```

Lembrando que pode ser passada uma sequência de instruções. Neste caso, a troca das 
posições deve ser feita na ordem definida. Por exemplo:

```ruby
# array recebido

[['A', 'B', 'C', 'D', 'E'],
 ['R', 'S', 'T', 'U', 'V']]

# sequência de instruções

1:0<>2
0:1<>4
^v:1
1:1<>2
^v:3
```

