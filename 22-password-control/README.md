# Validador de Senhas

Miguelito está estudando desenvolvimento web e foi "contratado" por sua tia
Manuela para fazer um site de venda de pastéis de nata. Tia Manuela pediu um
sistema de login de clientes para seu site e estabeleceu algumas "regras de
segurança" para validar as senhas numéricas das contas criadas:

- não podem ter menos de 5 caracteres;
- os números devem sempre estar em ordem crescente;
- devem sempre conter pelo menos um número repetido em sequência.

Vejamos os seguintes exemplos:

- `12345` não é uma senha válida, porque não possui nenhum número repetido;
- `12234` é uma senha válida;
- `11332` não é válida porque o número 2 vem depois do 3;
- `11334` é uma senha válida;
- `1123` não é válida porque possui apenas 4 caracteres.

Miguelito precisa de sua ajuda! Neste desafio, você deve implementar o código de
duas classes que, em conjunto, serão utilizadas para verificar uma lista de
senhas, retornando quantas senhas são válidas.

A classe `PasswordValidator` recebe uma string e o método `check` analisa a
senha e retorna `Válida` ou `Inválida`, de acordo com os critérios descritos acima.
A classe `PasswordListProcessor` recebe uma lista de strings e conta quantas
dessas strings correspondem às senhas válidas.


