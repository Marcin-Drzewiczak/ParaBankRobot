*** Settings ***
Documentation    Open account page related keywords
Library    SeleniumLibrary
Variables  ../UIMap.py
*** Variables ***

*** Keywords ***
Click Button For Account Creation
    Click Element    ${OpenAccountPageMap}[ConfirmAccountCreationButtonXpath]

Confirm Account Creation
    Page Should Contain  Account Opened!

Change Account Type To Savings
    Select From List By Label    ${OpenAccountPageMap}[AccountTypeSelectXpath]  SAVINGS