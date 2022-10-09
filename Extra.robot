*** Settings ***
Documentation    Aqui neste arquivo estão todos os dados do exercicio de Argumentos e Retornos + If Simples

Library    SeleniumLibrary


*** Test Cases ***
Cenário 01: Adicionar somente números em uma nova lista
                Adicionar os numeros em uma nova lista

*** Keywords ***
Adicionar os numeros em uma nova lista
    
    TRY
        ${LISTA}    Create List    A    1    B    2    C    3
    EXCEPT    A    B    C    
        Log To Console    os caracteres A,B e C são excessoes
    FINALLY
        ${NOVA_LISTA}    Create List    1    2    3
        Log to console    ${NOVA_LISTA}
    END
          

