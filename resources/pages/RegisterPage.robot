*** Settings ***
Documentation    Register page related keywords
Library    SeleniumLibrary
Variables  ../UIMap.py
*** Variables ***

*** Keywords ***
First Name Input
    [Arguments]  ${FirstName}
    Input Text    id:customer.firstName    ${FirstName}

Last Name Input
    [Arguments]  ${LastName}
    Input Text    id:customer.lastName    ${LastName}

Address Street Input
    [Arguments]  ${AddressStreet}
    Input Text    id:customer.address.street    ${AddressStreet}

Address City Input
    [Arguments]  ${AddressCity}
    Input Text    id:customer.address.city    ${AddressCity}

Address State Input
    [Arguments]  ${AddressState}
    Input Text    id:customer.address.state    ${AddressState}

Address Zip Code Input
    [Arguments]  ${AddressZipCode}
    Input Text    id:customer.address.zipCode    ${AddressZipCode}

Phone Number Input
    [Arguments]  ${PhoneNumber}
    Input Text    id:customer.phoneNumber    ${PhoneNumber}

SSN Input
    [Arguments]  ${SSN}
    Input Text    id:customer.ssn    ${SSN}

Username Input
    [Arguments]  ${Username}
    Input Text    id:customer.username    ${Username}

Password Input
    [Arguments]  ${Password}
    Input Password    id:customer.password    ${Password}

Repeated Password Input
    [Arguments]  ${Password}
    Input Password    id:repeatedPassword    ${Password}

Click Register Button
    Click Button    //input[@type='submit' and @value='Register']
