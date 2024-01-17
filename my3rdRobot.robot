*** Settings ***
# Ici j'indique ma documentation
Documentation    Ceci est un cas de test automatisé.
Library     SeleniumLibrary

*** Keywords ***
OpenMyBrowser
    Set Selenium Implicit Wait    2 seconds
    Open Browser    ${url}    ${browser}
    Sleep    1
    Maximize Browser Window    
    Sleep    3

Login Page Test 
    [Arguments]    ${email}    ${mdp}
    Click Element    id:menu-toggle
    Sleep    1
    Click Element    xpath=//a[@href='profile.php#login']
    Sleep    1
    Input Text    xpath=//input[@name='username']    ${email}
    Sleep    1
    Input Text    xpath=//input[@name='password']    ${mdp}
    Sleep    2
    Click Button    id:btn-login
    Sleep    1

*** Variables ***
${url}    https://katalon-demo-cura.herokuapp.com/
${browser}    firefox
${email}    John Doe
${mdp}    ThisIsNotAPassword

# ici sont mes cas de test
*** Test Cases ***
Make an appointment test case ok
    
    OpenMyBrowser
    Login Page Test    John Doe    ThisIsNotAPassword
    Close Browser

Make an appointment test case fail
    
    OpenMyBrowser
    Login Page Test    test    wrongMDP
    Element Text Should Be    xpath=/html/body/section/div/div/div[1]/p[2]    Login failed! Please ensure the username and password are valid.
    Close Browser

