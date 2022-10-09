*** Settings ***
Documentation    Aqui neste arquivo estão todos os dados do exercicio do For Simples + Lista

Library    SeleniumLibrary

*** Variables ***

@{FRUTAS}    Banana    Maçã    Morango    Laranja    Limão    Melão


*** Test Cases ***
Cenário 01: Imprimir lista de frutas
    Imprimir lista de frutas

*** Keywords ***
Imprimir lista de frutas
    FOR   ${FRUTA}  IN   @{FRUTAS}
        Log To Console    ${FRUTA}
    END
    
