*** Settings ***
Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${URL}    http://training-wheels-protocol.herokuapp.com/

*** Keywords ***
Nova sessão
    Open Browser                   ${URL}
    ...                            chrome

Encerra sessão
    Capture Page Screenshot    ${TEST NAME}.png
    Close Browser