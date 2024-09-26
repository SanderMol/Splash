*** Settings ***
Library    Browser

*** Variables ***
${NS_URL}     https://www.ns.nl
${VERTREK}    Amsterdam Centraal
${BESTEMMING} Utrecht Centraal

*** Keywords ***
Wait Until Element Is Visible
    [Arguments]    ${id}    ${10s}
    

Open NS Website En Wacht Op Laadscherm
    New Browser    headless=false
    New Page    ${NS_URL}
    Sleep    5s

Voer Reisinformatie In
    Input Text    id=location-input-FROM-POSITIONED    ${VERTREK}
    Input Text    id=location-input-TO-POSITIONED    ${BESTEMMING}

Klik op Plan Reis
    Click    id=planningIndicator

*** Test Cases ***
Plan Een Reis Op NS Website
    [Documentation]    Test het invoeren van een vertrek- en bestemmingsadres en klik op plannen.
    Open NS Website En Wacht Op Laadscherm
    Voer Reisinformatie In
    Klik op Plan Reis
    Close Browser
