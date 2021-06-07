*** Settings ***

Test Template    Teste datadriven


*** Test Cases ***    MENSAGEM
Test1               Gabriel
Test2             Jundurian


*** Test Cases ***
Deve imprimir no login    Log to Console
    


*** Keywords ***
Teste datadriven

    [Arguments]       ${message}
    Log To Console    Aqui temos uma mensagem por data driven: ${message}