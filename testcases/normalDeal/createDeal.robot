*** Settings ***
Library         SeleniumLibrary
Resource        ../../actions/common/closeBrowser.robot
Resource        ../../actions/pageObject/promotionToolPO.robot
Resource        ../../actions/pageObject/normalDeal/createdealPO.robot
Resource        ../../actions/pageObject/normalDeal/priceDiscountListPO.robot

Suite Setup     SC-Login Seller Center     seller2@gmail.com   123456

Suite Teardown  Close My Browser

*** Test Cases ***
Create Deal Is Load Success
    [Documentation]  Verify page create deal is loaded successfully
    [Tags]  seller
    SC-Open Price Discount Listing Page
    SC-Open Create Normal Deal Page
    Is Loaded Create Normal Deal Page

Search With Product Name
    [Documentation]  Verify product add to
    Search By Product Name   Áo Thun nam QC     (5)
    Click Add All Product
    sleep  2s

Next to Step 2
    CLick Next To Step2 Button
    Input Price To deal     10
    sleep  2s
