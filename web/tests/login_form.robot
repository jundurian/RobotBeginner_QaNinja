*** Settings ***
Library    SeleniumLibrary

Resource    base.robot

Test Setup           Nova sessão
Test Teardown        Encerra sessão

*** Test Cases ***
Login com sucesso
    Go To                   ${URL}/login
    Login with              stark    jarvis!
    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Senha invalida
    Go To                         ${URL}/login
    Login with                    stark    jarvisds!
    Should Contain Login Alert    Senha é invalida!

User nao existe
    Go To                         ${URL}/login
    Login with                    asdasd    asdasdsa
    Should Contain Login Alert    O usuário informado não está cadastrado



*** Keywords ***
Login with
    [Arguments]             ${uname}    ${pass}
    Input Text              css:input[name=username]    ${uname}
    Input Text              css:input[name=password]    ${pass}
    Click Element           class:btn-login    

Should Contain Login Alert    
    [Arguments]    ${expec_message}
    ${message}=             Get WebElement          flash
    Should Contain           ${message.text}          ${expec_message}   