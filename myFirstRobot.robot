*** Settings ***
# Ici j'indique ma documentation
Documentation    Ceci est un cas de test automatisé.
Library     SeleniumLibrary

*** Keywords ***
# ici je note mes variables
*** Variables ***
${url}    https://katalon-demo-cura.herokuapp.com/
${browser}    firefox
${identifiant}    John Doe
${mdp}    ThisIsNotAPassword

# ici sont mes cas de test
*** Test Cases ***
Make an appointment test case
    Set Selenium Implicit Wait    2 seconds
    Open Browser    ${url}    ${browser}
    Sleep    1
    Maximize Browser Window    
    Sleep    3
    Click Element    id:btn-make-appointment
    Sleep    1
    Input Text    xpath=//input[@name='username']    ${identifiant}
    Input Text    xpath=//input[@name='password']    ${mdp}
    Sleep    2
    Click Button    id:btn-login
    Sleep    1
    Click Element   //option[@value='Hongkong CURA Healthcare Center']
    Sleep    1
    Select Checkbox    id:chk_hospotal_readmission  
    Sleep    1
    # xpath=//input[@id='chk_hospotal_readmission']
    Select Radio Button    programs    Medicaid
    Sleep    1
    Radio Button Should Be Set To    programs    Medicaid
    Sleep    1
    Input Text    id:txt_visit_date    02/07/2022
    Sleep    1
    Input Text    id:txt_comment    un commentaire
    Sleep    3
    Click Button    id:btn-book-appointment
    Sleep    1
    Element Text Should Be    id:facility    Hongkong CURA Healthcare Center
    Element Text Should Be    id:hospital_readmission    Yes
    Element Text Should Be    id:program    Medicaid
    Element Text Should Be    id:visit_date    02/07/2022
    Element Text Should Be    id:comment    un commentaire
    Sleep    3
    Click Element    xpath=//a[@href='https://katalon-demo-cura.herokuapp.com/']
    
    Sleep    3
    Close Browser

