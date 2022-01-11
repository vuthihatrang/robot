*** Settings ***
Library         SeleniumLibrary
Resource        loginPO.robot
Resource        ../common/openBrowser.robot
Resource        ../common/closeBrowser.robot
Variables       ../../interfaces/homePageUI.py

*** Keywords ***
${ a}= "trung maket"

Home: Close Tour Of Approve Product
    ${isElementDisplay}=   Run Keyword And Return Status    Element Should Be Visible   ${btn_closeApproveProduct}
    run keyword if  ${isElementDisplay}   click button   ${btn_closeApproveProduct}

Home: Close Tour Of Maketing center
    ${isElementDisplay}=   Run Keyword And Return Status    element should be enabled   ${icon_closeMKTour}
    run keyword if  ${isElementDisplay}   click element   ${icon_closeMKTour}

Home: Close Tour Of To Do List
    ${isElementDisplay}=   Run Keyword And Return Status    element should be enabled   ${icon_closeTourToDoList} 20s
    run keyword if  ${isElementDisplay}   click element   ${icon_closeTourToDoList}

Home: Expand Menu Maketing Center
    ${isNotExpand}=   Run Keyword And Return Status    element should be enabled    ${menu_maketingCenter}
    run keyword if  ${isNotExpand}       click element  ${menu_maketingCenter}

Home: Open Promotion Tools Page
    wait until element is visible   ${menu_promotion}
    click link      ${menu_promotion}


Home: SC-Open Promotion Tools Page
    Home: Close Tour Of Approve Product
    Home: Close Tour Of To Do List
    Home: Close Tour Of Maketing center
    Home: Expand Menu Maketing Center
    Home: Open Promotion Tools Page


