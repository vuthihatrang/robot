*** Settings ***
Library         SeleniumLibrary
Resource        loginPO.robot
Resource        ../common/openBrowser.robot
Resource        ../common/closeBrowser.robot
Variables       ../../interfaces/homePageUI.py

*** Keywords ***

Close Tour Of Approve Product
    ${isElementDisplay}=   Run Keyword And Return Status    Element Should Be Visible   ${btn_closeApproveProduct}
    run keyword if  ${isElementDisplay}   click button   ${btn_closeApproveProduct}

Close Tour Of Maketing center
    ${isElementDisplay}=   Run Keyword And Return Status    element should be enabled   ${icon_closeMKTour}
    run keyword if  ${isElementDisplay}   click element   ${icon_closeMKTour}

Close Tour Of To Do List
    ${isElementDisplay}=   Run Keyword And Return Status    element should be enabled   ${icon_closeTourToDoList} 20s
    run keyword if  ${isElementDisplay}   click element   ${icon_closeTourToDoList}

Expand Menu Maketing Center
    ${isNotExpand}=   Run Keyword And Return Status    element should be enabled    ${menu_maketingCenter}
    run keyword if  ${isNotExpand}       click element  ${menu_maketingCenter}

Open Promotion Tools Page
    wait until element is visible   ${menu_promotion}
    click link      ${menu_promotion}


SC-Open Promotion Tools Page
    Close Tour Of Approve Product
    Close Tour Of To Do List
    Close Tour Of Maketing center
    Expand Menu Maketing Center
    Open Promotion Tools Page


