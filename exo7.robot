*** Settings ***
# Ici j'indique ma documentation
Documentation    Ceci est un cas de test automatisé.
Library     SeleniumLibrary
Resource    exo7.resource


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

