*** Settings ***
Library    SeleniumLibrary

Resource    base.robot

Test Setup           Nova sessão
Test Teardown        Encerra sessão

*** Test Cases ***
Deve selecionar Scott Lang pelo texto e valida pelo value
    Go To                        ${URL}/dropdown
    Select From List By Label    class:avenger-list   Scott Lang 
    ${VARIAVEL_NAME}             Get Selected List Value    class:avenger-list
    Should Be Equal              ${VARIAVEL_NAME}    7

Deve selecionar Scott Lang pelo valor e validar pelo text
    Go To                        ${URL}/dropdown
    Select From List By Value    id:dropdown    6
    ${VARIAVEL_NAME}             Get Selected List Label      id:dropdown
    Should Be Equal              ${VARIAVEL_NAME}    Loki