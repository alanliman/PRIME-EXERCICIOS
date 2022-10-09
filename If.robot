*** Settings ***
Documentation    Aqui neste arquivo estão todos os dados do exercicio do If Inline + For in Range

Library    SeleniumLibrary

*** Variables ***

${SIMPLES}

*** Test Cases ***
Cenário 01: Exibir numeros pares na contagem de 0 a 10
    Exibir numeros pares na contagem de 0 a 10

*** Keywords ***
Exibir numeros pares na contagem de 0 a 10 
    FOR  ${COUNT}    IN RANGE    0  11 
        IF    ${COUNT}==0
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==2
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==4
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==6
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==8
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==10
            Log To Console    Estou no número: ${COUNT}
        ELSE
            Log To Console    Eu não sou o número impar
        END
    END