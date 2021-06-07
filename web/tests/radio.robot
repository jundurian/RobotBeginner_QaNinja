*** Settings ***
Resource    base.robot

Test Setup           Nova sessão
Test Teardown        Encerra sessão


*** Test Cases ***
Selecionando por ID
    Go To                            ${URL}/radios
    Select Radio Button              movies    thor
    Radio Button Should Be Set To    movies    thor

Selecionando por value
    Go To                            ${URL}/radios
    Select Radio Button              movies    guardians
    Radio Button Should Be Set To    movies    guardians