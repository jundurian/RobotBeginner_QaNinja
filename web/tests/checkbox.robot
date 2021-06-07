*** Settings ***
Library    SeleniumLibrary

Resource    base.robot

Test Setup           Nova sessão
Test Teardown        Encerra sessão

*** Variables ***
${CHECK_THOR}       thor
${CHECK_IRONMAN}    css:input[value='iron-man']
${CHECK_PANTERA}    //*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID
    Go To                          ${URL}/checkboxes
    Select Checkbox                ${CHECK_THOR}
    Checkbox Should Be Selected    ${CHECK_THOR}

Marcando opçao com CSS Selector
    Go To                          ${URL}/checkboxes
    Select Checkbox                ${CHECK_IRONMAN}
    Checkbox Should Be Selected    ${CHECK_IRONMAN}

Marcando opção com Xpath
    [Tags]    Xpath
    Go To                          ${URL}/checkboxes
    Select Checkbox                ${CHECK_PANTERA}
    Checkbox Should Be Selected    ${CHECK_PANTERA}



