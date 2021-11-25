*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Open My Browser
    [Arguments]     ${URL}         ${browser}
    Open browser   ${URL}          ${browser}
    Maximize browser window
