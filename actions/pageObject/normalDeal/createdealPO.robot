*** Settings ***
Library         SeleniumLibrary
Library         String
Variables       ../../../interfaces/normalDealPageUI/createNormalDealUI.py




*** Keywords ***
Get Number From String
    [Arguments]     ${queryResultsA}
    @{queryResultsA}=    split string    ${queryResultsA}
    @{queryResultsB}=    split string     Tất cả sản phẩm (X)
    ${number} =     Evaluate    (set(${queryResultsA}) - set(${queryResultsB}))
    [Return]        ${number}

Is Loaded Create Normal Deal Page
   element should be enabled  ${titleCreateDeal}

Select Option Search By SKU
    element should be enabled  ${listbox_search}
    click element      ${listbox_search}
    ${isNotSelected}=   Run Keyword And Return Status    Element Should Be Visible ${select_optionSearchWithByTitle}
    run keyword if  ${isNotSelected} click element ${select_optionSearchWithByTitle}
    input text

Search By Product Name
    [Arguments]  ${keyword}     ${numberProduct}
    #clear element text  ${txt_searchWithProductName}
    element should be enabled   ${txt_searchWithProductName}
    click element  ${txt_searchWithProductName}
    input text  ${txt_searchWithProductName}    ${keyword}
    sleep  2s

    #${resutSearch}=     get text  ${total_numberProduct}
    #${totalProduct}=    Get Number From String      ${resutSearch}
    #${totalProuct}     should be equal  ${numberProduct}
Click Add All Product
    click button    ${btn_addAll}

CLick Next To Step2 Button
    click button  ${btn_nextToStep2}

Input Price To deal
    [Arguments]  ${specQuantity}
    element should be visible  ${input_price}
    @{elements}=   get webelements  ${input_price}
    FOR     ${element}     IN    @{elements}
        input text      ${element}      ${specQuantity}
    END



Input Limit Quantity
    [Arguments]  ${limitQuantity}

Input Date Time

Click On Button Submit Deal
    wait until element is visible   ${btn_submitDeal}
    click button    ${btn_submitDeal}
    #Select Option Search With By Title  SKU
    sleep   5s

