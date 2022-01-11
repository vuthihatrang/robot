*** Settings ***
Library         SeleniumLibrary
Resource        ../../actions/common/closeBrowser.robot
Resource        ../../actions/pageObject/promotionToolPO.robot
Resource        ../../actions/pageObject/normalDeal/createdealPO.robot
Resource        ../../actions/pageObject/normalDeal/priceDiscountListPO.robot


Suite Setup     SC-Login Seller Center     hoa.trinh@datamart.vn   data@2018

Suite Teardown  Close My Browser

*** Test Cases ***
Create Deal Is Load Success
    [Documentation]  Verify page create deal is loaded successfully
    [Tags]  seller
    Price Discount: Open Create Normal Deal Page
    Step 1: Is Loaded Create Normal Deal Page
    sleep  3s

Search With Product Name
    [Documentation]  Verify product add to
    [Tags]  seller
    Step 1: Search By Product Name   Ví Nam Đứng Da Bò Thật
    sleep  2s

Create deal
    [Documentation]  Verify product add to Deal
    [Tags]  seller
    Step 1: Click Add All Product
    Step 1: CLick Next To Step2 Button
    #Step 2: Input Special Pri  Step 1: CLick Next To Step2 Buttonce
    Step 2: Input Price Discount Percent    10
    Step 2: Input Special Quantity      3
    Step 2: Input Limit Quantity        1
    Step 2: Input Date      2021/12/20      2021/12/21
    sleep  2s
    Step 2: Click On Button Submit Deal
    Step 2: Not Display Error
    sleep  2s