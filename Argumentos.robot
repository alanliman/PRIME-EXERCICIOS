*** Settings ***
Documentation    Aqui neste arquivo estão todos os dados do exercicio de Argumentos e Retornos + If Simples

Library    SeleniumLibrary

*** Variables ***

${SIMPLES}

*** Test Cases ***
Cenário 01: Validar ano de nascimento
    Subtrair dois numeros    2022    34
    

*** Keywords ***
idade=34
Subtrair dois numeros
    [Arguments]        ${NUM_A}    ${NUM_B}
    ${SUBTRAI}        Evaluate    ${NUM_A}-${NUM_B}
    Log To Console    \n${SUBTRAI}
    IF    ${SUBTRAI}<2000
        Log To Console    Nasceu no século passado        
    END
    