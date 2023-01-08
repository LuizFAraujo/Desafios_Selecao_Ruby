# Código pessoal

O governo de Ratanabá contratou você para desenvolver um software que gera códigos pessoais únicos, para facilitar o registro dos cidadãos.

Cada pessoa receberá seu código no nascimento, a partir de uma hash com suas informações pessoais: nome, sobrenome e data de nascimento. Essa hash será recebida pelo algoritmo e deverá retornar um código de 10 caracteres como uma string, seguindo os seguintes passos:

## Gerar 6 letras maiúsculas, as 3 primeiras a partir do sobrenome e 3 últimas a partir do nome, seguindo as seguintes regras:
- Se o sobrenome/nome tiver pelo menos três consoantes, as três primeiras consoantes serão usadas.

    Exemplo: Newton -> NWT

- Se o sobrenome/nome tiver menos de três consoantes, as vogais irão substituir os caracteres em falta, na ordem que elas aparecem.
    
    Exemplo: Luna -> LNU

- Se o sobrenome/nome tiver menos que três letras, a letra `X` irá ocupar o terceiro espaço depois das consoantes/vogais existentes.
    
    Exemplo: Yu -> YUX

## Gerar 2 números, seguidos de 1 letra maiúscula e mais 1 número a partir da data de nascimento, seguindo as seguintes regras:
- Pegue os últimos dois dígitos do seu ano de nascimento
Exemplo: 1974 -> 74

- Gerar uma letra correspondente ao mês de nascimento, utilizando a tabela de conversão incluída abaixo:

` "1": "A", "2": "B", "3": "C", "4": "D", "5": "E", "6": "H", "7": "L", "8": "M", "9": "P", "10": "R", "11": "S", "12": "T".`

    Exemplo: Janeiro -> A | Dezembro - T

- Somar o dia do nascimento até chegar a um algarismo apenas

    Exemplo: 29/03/2001 -> 29 -> 2 + 9 = 11 -> 1 + 1 = 2 -> `2`

## Exemplos:

Nesta primeira hash:

```
data = {
         "name": "Matt",
         "surname": "Martins",
         "birthdate": "1/1/1900"
        }
```

Seria retornado `MRTMTT00A1`.

Nesta segunda hash:

```
data = {
         "name": "Helen",
         "surname": "Yu",
         "birthdate": "28/12/1950"
        }
```

Seria retornado `YUXHLN50T1`.

- Observação: A letra `Y` deve ser considerada uma consoante.

