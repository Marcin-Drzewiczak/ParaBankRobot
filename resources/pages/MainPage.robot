*** Settings ***
Documentation    Main page related keywords
Library    SeleniumLibrary
Variables  ../UIMap.py
*** Variables ***

*** Keywords ***
Open Link To Open Account Page
    Click Link    ${MainPageMap}[OpenNewAccountLink]

Open Link To Transfer Founds Page
    Click Link    ${MainPageMap}[TransferFoundsLink]

Open Link To Bill Pay Page
    Click Link    ${MainPageMap}[BillPayLink]
