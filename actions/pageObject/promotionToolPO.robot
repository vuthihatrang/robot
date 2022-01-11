*** Settings ***
Library         SeleniumLibrary
Variables       ../../interfaces/promotionToolPageUI.py
Resource        ../../actions/pageObject/homePO.robot
*** Keywords ***
MKT: Click Link Price Discount Listing
    wait until element is visible        ${link_dealList}
    scroll element into view  ${link_dealList}
    click link      ${link_dealList}

MKT: Open Price Discount Listing Page
    Home: SC-Open Promotion Tools Page
    MKT: Click Link Price Discount Listing
    sleep   5s