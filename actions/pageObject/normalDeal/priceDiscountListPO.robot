*** Settings ***
Library         SeleniumLibrary
Variables       ../../../interfaces/normalDealPageUI/priceDiscountList.py
Resource        ../../actions/pageObject/promotionToolPO.robot

*** Keywords ***
Price Discount: Close Tour Of Normal Deal
    scroll element into view   ${btn_closeProTour}
    ${ispProTourDisplay}=   Run Keyword And Return Status    Element Should Be Visible  ${btn_closeProTour}
    run keyword if  ${ispProTourDisplay}    click element    ${btn_closeProTour}

Price Discount: Click On Button Create Deal
    wait until element is visible   ${btn_createDeal}
    click button        ${btn_createDeal}

Price Discount: Open Create Normal Deal Page
    MKT: Open Price Discount Listing Page
    Price Discount: Close Tour Of Normal Deal
    Price Discount: Click On Button Create Deal


Price Discount: Search Deal By Sku
    wait until element is enabled   ${txt_SKU}
    click element  ${txt_SKU}




