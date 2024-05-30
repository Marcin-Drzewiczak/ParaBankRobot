*** Settings ***
Library    SeleniumLibrary
Resource  pages/LoginPage.robot
Variables  Constants.py

*** Keywords ***
Start TestCase
    Open Browser    ${Base_URL}  ${Browser}
    Maximize Browser Window
    Sleep    1s

Finish TestCase
    Close Browser


Login To Account
    LoginPage.Input Login    ${Username}
    LoginPage.Input User Password    ${Password}
    LoginPage.Click Login Button    
    Page Should Contain    Accounts Overview