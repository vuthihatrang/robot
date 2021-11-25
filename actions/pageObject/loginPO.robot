*** Settings ***
Library         SeleniumLibrary
Variables       ../../interfaces/loginSCPageUI.py
Variables       ../../interfaces/loginTalaPageUI.py
Resource        ../../actions/common/openBrowser.robot


*** Keywords ***

Click Login Button SC
    wait until element is enabled   ${btn_login}
    Click button    ${btn_login}

Switch To Tala Tab
    switch window  ${title_tala}

Enter Email To Text Box
    [Arguments]     ${emailAdrress}
    wait until element is visible       ${txt_email}
    clear element text      ${txt_email}
    input text      ${txt_email}        ${emailAdrress}

Enter Password To Text Box
    [Arguments]     ${password}
    wait until element is visible       ${txt_password}
    clear element text      ${txt_password}
    input text      ${txt_password}        ${password}

Click Submit Button
    wait until element is enabled       ${btn_submit}
    click button        ${btn_submit}

Switch To SC Tab
    switch window  ${title_sc}

SC-Login Seller Center
    [Arguments]     ${emailAdrress}     ${password}

    Open My Browser     https://sandbox-sellercenter.tiki.vn/new#/user/login    chrome

    Click Login Button SC

    Switch To Tala Tab
    Enter Email To Text Box         ${emailAdrress}
    Enter Password To Text Box      ${password}
    Click Submit Button

    Switch To SC Tab
    sleep  10s

