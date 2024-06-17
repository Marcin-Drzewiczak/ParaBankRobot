*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/CommonFunctionality.robot
Resource    ../resources/pages/RegisterPage.robot
Resource    ../resources/pages/LoginPage.robot
Variables   ../resources/Constants.py


Test Setup    CommonFunctionality.Start TestCase
Test Teardown    CommonFunctionality.Finish TestCase
*** Variables ***
${FirstName}  Bogdan Polak
${LastName}  Bogdan Polak
${AddressStreet}  Black Cat 16
${AddressCity}  Poland
${AddressState}  Maine
${AddressZipCode}  04274
${PhoneNumber}  123-456-789
${SSN}  534-90-2138
${Account}  13894
${Amount}  1

*** Test Cases ***
Register New Account
    LoginPage.Open Link To Register Page
    RegisterPage.First Name Input  ${FirstName}
    RegisterPage.Last Name Input    ${LastName}
    RegisterPage.Address City Input    ${AddressCity}
    RegisterPage.Address State Input    ${AddressState}
    RegisterPage.Address Zip Code Input    ${AddressZipCode}
    RegisterPage.Phone Number Input    ${PhoneNumber}
    RegisterPage.SSN Input    ${SSN}

    RegisterPage.Username Input    ${Username}
    RegisterPage.Password Input    ${Password}
    RegisterPage.Repeated Password Input    ${Password}
    RegisterPage.Click Register Button