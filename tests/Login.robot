*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/CommonFunctionality.robot
Resource    ../resources/pages/LoginPage.robot
Variables   ../resources/Constants.py

Test Setup    CommonFunctionality.Start TestCase
Test Teardown    CommonFunctionality.Finish TestCase
*** Variables ***

*** Test Cases ***
Login To Account
    LoginPage.Input Login    ${Username}
    LoginPage.Input User Password    ${Password}
    LoginPage.Click Login Button    
    Page Should Contain    Accounts Overview

Fail Login To Account
    LoginPage.Input Login    ${Username}
    LoginPage.Input User Password    wrong
    LoginPage.Click Login Button    
    Page Should Contain    The username and password could not be verified.