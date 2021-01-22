#language: pt

Funcionalidade: Busca por Unidades
    Realizar busca do endereço das unidades Fleury


Cenario: Validar o endereço de uma unidade
    Dado Que o usuário esteja na tela "Unidades"
    Quando o usuário acessar a unidade "Brasilia"
    Entao deverá visualizar o endereço "SEPS 715/915, Conjunto A, Bloco E, Asa Sul, Brasília - DF - 70390-155"