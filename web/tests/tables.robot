*** Settings ***
Library    SeleniumLibrary

Resource    base.robot

Test Setup           Nova sessão
Test Teardown        Encerra sessão

*** Test Cases ***
Verifica o valor ao informar o numero da linha
    Go To    ${URL}/tables
    Table Row Should Contain    id:actors    1    @vindiesel

Descobre a linha pelo texto e valida os demais valores
    Go To             ${URL}/tables
    ${target}=        Get WebElement    xpath:.//tr[contains(.,'@robert')]
    Log To Console    ${target.text}
    Log               ${target.text}
    Should Contain    ${target.text}    Vingadores 
    Should Contain    ${target.text}    Homem de Ferro 