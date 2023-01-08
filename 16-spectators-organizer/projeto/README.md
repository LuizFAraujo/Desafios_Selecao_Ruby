# Organizador de espectadores

Uma emissora de televisão precisava organizar melhor a plateia dos seus programas, pois os estúdios dessa emissora têm um problema: as cadeiras do auditório são posicionadas em uma superfície plana (não são organizadas em forma de "escada").

Para solucionar esse problema, a emissora contratou uma pessoa desenvolvedora para elaborar um código capaz de ler um mapa de assentos com as alturas dos espectadores e retornar as posições em que a pessoa está com a visão bloqueada por alguém mais alto.

O código receberá vários mapas com a alocação de assentos do auditório e deve devolver um *array* vazio (caso o palco seja visível para todos na plateia) ou um ou mais *arrays* dentro de um *array* com as coordenadas que tenham problemas para visualizar o palco (caso uma ou mais pessoas não sejam capazes de ver a plateia).

- Um número é capaz de ver o palco apenas se todos os números à sua frente forem menores do que o seu valor.
- O número `0` no mapa representa a posição do palco.
- A ordem dos *arrays* dentro do *array* de resultado deve seguir a prioridade: Linha -> Coluna.

Exemplos:

Neste primeiro mapa:

```
spectators = [[0, 0, 0, 0, 0, 0],
              [1, 2, 3, 2, 1, 1],
              [2, 4, 4, 3, 2, 2],
              [5, 5, 5, 5, 4, 4],
              [6, 6, 7, 6, 5, 5]]
```

Seria retornado `[]`, pois ao olhar qualquer número, todos os outros que estão diretamente na sua frente têm valores menores.

Neste segundo mapa:

```
spectators = [[0, 0, 0, 0, 0, 0],
              [1, 2, 3, 2, 1, 1],
              [2, 4, 4, 3, 2, 2],
              [5, 5, 5, 10, 4, 4],
              [6, 6, 7, 6, 5, 5]]
```

Seria retornada a coordenada `[[4, 3]]`, pois o número `10` está diretamente na frente do número `6`, impedindo assim o espectador de altura `6` de ver o palco.
