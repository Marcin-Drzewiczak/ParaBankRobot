*** Settings ***
Documentation    Test open new accounts, both checking and savings
Library    SeleniumLibrary
Resource    ../resources/CommonFunctionality.robot
Resource    ../resources/pages/MainPage.robot
Resource    ../resources/pages/OpenAccountPage.robot
Resource    ../resources/pages/BillPage.robot

Test Setup    Run Keywords  CommonFunctionality.Start TestCase  AND  CommonFunctionality.Login To Account
Test Teardown    CommonFunctionality.Finish TestCase
*** Variables ***
${PayeeName}  Bogdan Polak
${PayeeAddressStreet}  Black Cat 16
${PayeeAddressCity}  Poland
${PayeeAddressState}  Maine
${PayeeAddressZipCode}  04274
${PayeePhoneNumber}  123-456-789
${PayeeAccountNumber}  13894
${VerifyAccount}  13894
${Amount}  1
*** Test Cases ***
Bill Pay
    MainPage.Open Link To Bill Pay Page
    BillPage.Input Payee Name  ${PayeeName}
    BillPage.Input Payee Address Street  ${PayeeAddressStreet}
    BillPage.Input Payee Address City  ${PayeeAddressCity}
    BillPage.Input Payee Address State  ${PayeeAddressState}
    BillPage.Input Payee Address ZipCode  ${PayeeAddressZipCode}
    BillPage.Input Payee Phone Number  ${PayeePhoneNumber}
    BillPage.Input Payee Account Number  ${PayeeAccountNumber}
    BillPage.Input Verify Account  ${PayeeAccountNumber}
    BillPage.Input Amount  ${Amount}

    Click Button    xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/form/table/tbody/tr[14]/td[2]/input
    Page Should Contain    Bill Payment Complete