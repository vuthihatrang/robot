*** Settings ***
Library         SeleniumLibrary
Variables       ../../interfaces/promotionToolPageUI.py
Resource        ../../actions/pageObject/homePO.robot

*** Keywords ***
Click Link Price Discount Listing
    wait until element is visible        ${link_dealList}
    click link      ${link_dealList}
    sleep   10s

SC-Open Price Discount Listing Page
    SC-Open Promotion Tools Page
    Click Link Price Discount Listing
