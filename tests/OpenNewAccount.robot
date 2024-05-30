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
Open New Checking Account
    MainPage.Open Link To Open Account Page
    OpenAccountPage.Click Button For Account Creation
    OpenAccountPage.Confirm Account Creation

Open New Saving Account
    MainPage.Open Link To Open Account Page
    OpenAccountPage.Change Account Type To Savings
    OpenAccountPage.Click Button For Account Creation
    OpenAccountPage.Confirm Account Creation