*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}         www.google.com
${BROWSER}        chrome
${DELAY}          1
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      https://${SERVER}/
${WELCOME URL}    https://${SERVER}/welcome.html
${ERROR URL}      https://${SERVER}/error.html


*** Test Cases ***
Open Browser To Test Project
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Test Search Google
    Input Text    q    robot framework
    Submit Form
    [Teardown]    Close Browser