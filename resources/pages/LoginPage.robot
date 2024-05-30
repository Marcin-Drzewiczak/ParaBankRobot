*** Settings ***
Documentation    Login page related keywords
Library    SeleniumLibrary
Variables  ../UIMap.py
*** Variables ***

*** Keywords ***
Input Login
    [Arguments]    ${login}
    Input Text    ${LoginPageMap}[LoginUsernameInputXpath]    ${login}

Input User Password
    [Arguments]  ${password}
    Input Password    ${LoginPageMap}[LoginPasswordInputXpath]    ${password}

Click Login Button
    Click Button    ${LoginPageMap}[LoginLogInButtonXpath]