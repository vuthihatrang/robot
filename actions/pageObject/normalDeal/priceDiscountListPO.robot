*** Settings ***
Library         SeleniumLibrary
Variables       ../../../interfaces/normalDealPageUI/priceDiscountList.py

*** Keywords ***
Close Tour Of Normal Deal
    ${ispProTourDisplay}=   Run Keyword And Return Status    Element Should Be Visible  ${btn_closeProTour}
    run keyword if  ${ispProTourDisplay}    click element    ${btn_closeProTour}

Click On Button Create Deal
    wait until element is visible   ${btn_createDeal}
    click button        ${btn_createDeal}

SC-Open Create Normal Deal Page
    Close Tour Of Normal Deal
    Click On Button Create Deal
