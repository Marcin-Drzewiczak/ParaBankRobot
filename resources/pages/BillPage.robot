*** Settings ***
Documentation    Login page related keywords
Library    SeleniumLibrary
Variables  ../UIMap.py
*** Variables ***

*** Keywords ***
Input Payee Name
    [Arguments]  ${name}
    Input Text    ${PayeeInfoMap}[PayeeNameTextBoxName]   ${name}
Input Payee Address Street
    [Arguments]  ${street}
    Input Text    ${PayeeInfoMap}[PayeeAddressStreetTextBoxName]   ${street}

Input Payee Address City
    [Arguments]  ${city}
    Input Text    ${PayeeInfoMap}[PayeeAddressCityTextBoxName]   ${city}

Input Payee Address State
    [Arguments]  ${state}
    Input Text    ${PayeeInfoMap}[PayeeAddressStateTextBoxName]   ${state}

Input Payee Address ZipCode
    [Arguments]  ${zipCode}
    Input Text    ${PayeeInfoMap}[PayeeAddressZipCodeTextBoxName]   ${zipCode}

Input Payee Phone Number
    [Arguments]  ${phoneNumber}
    Input Text    ${PayeeInfoMap}[PayeePhoneNumberTextBoxName]   ${phoneNumber}

Input Payee Account Number
    [Arguments]  ${accountNumber}
    Input Text    ${PayeeInfoMap}[PayeeAccountNumberTextBoxName]   ${accountNumber}

Input Verify Account
    [Arguments]  ${verifyAccount}
    Input Text    ${PayeeInfoMap}[VerifyAccountTextBoxName]   ${verifyAccount}

Input Amount
    [Arguments]  ${amount}
    Input Text    ${PayeeInfoMap}[AmountTextBoxName]   ${amount}
