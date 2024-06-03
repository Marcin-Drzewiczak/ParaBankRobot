*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/CommonFunctionality.robot
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
    Click Link    link:Register
    Input Text    id:customer.firstName    ${FirstName}
    Input Text    id:customer.lastName    ${LastName}
    Input Text    id:customer.address.street    ${AddressCity}
    Input Text    id:customer.address.city    ${AddressCity}
    Input Text    id:customer.address.state    ${AddressState}
    Input Text    id:customer.address.zipCode    ${AddressZipCode}
    Input Text    id:customer.phoneNumber    ${PhoneNumber}
    Input Text    id:customer.ssn    ${SSN}

    Input Text    id:customer.username    ${Username}
    Input Password    id:customer.password    ${Password}
    Input Password    id:repeatedPassword    ${Password}
    Click Button    //input[@type='submit' and @value='Register']