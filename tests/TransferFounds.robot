*** Settings ***
Documentation    Test open new accounts, both checking and savings
Library    SeleniumLibrary
Resource    ../resources/CommonFunctionality.robot
Resource    ../resources/pages/MainPage.robot
Resource    ../resources/pages/OpenAccountPage.robot

Test Setup    Run Keywords  CommonFunctionality.Start TestCase  AND  CommonFunctionality.Login To Account
Test Teardown    CommonFunctionality.Finish TestCase
*** Variables ***

*** Test Cases ***
Trasnfer Founds
    MainPage.Open Link To Transfer Founds Page
    Input Text    id:amount    1
    Click Button    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/div[2]/input
    Page Should Contain    Transfer Complete!