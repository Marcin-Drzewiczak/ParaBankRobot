*** Settings ***
Documentation    Main page related keywords
Library    SeleniumLibrary
Variables  ../UIMap.py
*** Variables ***

*** Keywords ***
Open Link To Open Account Page
    Click Link    ${MainPageMap}[OpenNewAccountLink]