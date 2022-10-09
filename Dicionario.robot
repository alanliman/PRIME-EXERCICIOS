*** Settings ***
Documentation    Aqui neste arquivo estão todos os dados do exercicio do dicionario

Library    SeleniumLibrary

*** Variables ***

&{DADOS_PESSOAIS}

...    nome=Alan Emanuel de Lima
...    idade=34
...    rua=Rio Quebra Anzois
...    rumero=893
...    cep=08190-040
...    bairro=Itaim Paulista
...    cidade=São Paulo
...    estado=SP

*** Test Cases ***
Cenário 01: Imprimir dados pessoais no console
                Imprimir dados pessoais no console

*** Keywords ***
Imprimir dados pessoais no console
    Log To Console    ${DADOS_PESSOAIS}
    