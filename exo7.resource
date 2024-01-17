*** Settings ***
Documentation    Regroups all the keywords for the welcome page of facebook
Library    SeleniumLibrary

#On peut y mettre les locators liés à cette page
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
