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
    ${number}

Step 1: Is Loaded Create Normal Deal Page
   element should be enabled  ${titleCreateDeal}

Step 1: Select Option Search By SKU
    element should be enabled  ${listbox_search}
    click element      ${listbox_search}
    ${isNotSelected}=   Run Keyword And Return Status    Element Should Be Visible ${select_optionSearchWithByTitle}
    run keyword if  ${isNotSelected} click element ${select_optionSmenu_maketingCenterarchWithByTitle}
    input text

Step 1: Search By Product Name
    [Arguments]  ${keyword}
    #clear element text  ${txt_searchWithProductName}
    element should be enabled   ${txt_searchWithProductName}
    click element  ${txt_searchWithProductName}
    input text  ${txt_searchWithProductName}    ${keyword}
    sleep  5s

    #${resutSearch}=     get text  ${total_numberProduct}
    #${totalProduct}=    Get Number From String      ${resutSearch}
    #${totalProuct}     should be equal  ${numberProduct}
Step 1: Click Add All Product
    #element should be    ${btn_addAll}       [
    click button    ${btn_addAll}

Step 1: CLick Next To Step2 Button
    #element should be visible  ${btn_nextToStep2}   [timeout]   10s
    click button  ${btn_nextToStep2}

Step 2: Input Special Price
    [Arguments]  ${specQuantity}
    element should be visible  ${input_price}
    @{elements}=   get webelements  ${input_price}
    FOR     ${element}     IN    @{elements}
        input text      ${element}      ${specQuantity}
    END

Step 2: Input Price Discount Percent
    [Arguments]  ${discountPercent}
    element should be visible  ${input_pricePercent}
    @{elements}=   get webelements  ${input_pricePercent}
    FOR     ${element}     IN    @{elements}
        input text      ${element}      ${discountPercent}
    END

Step 2: Input Special Quantity
    [Arguments]  ${quantity}
    element should be visible  ${input_dealQty}
    @{elements}=   get webelements  ${input_dealQty}
    FOR     ${element}     IN    @{elements}
        input text      ${element}      ${quantity}
    END

Step 2: Input Limit Quantity
    [Arguments]  ${limitQuantity}
    element should be visible  ${input_limitQty}
    @{elements}=   get webelements  ${input_limitQty}
    FOR     ${element}     IN    @{elements}
        input text      ${element}      ${limitQuantity}
    END

Step 2: Input Date
    [Arguments]  ${startDate}       ${endDate}
    element should be visible  ${input_limitQty}
    @{elementStartDate}=  get webelements  ${input_timeStart}
    @{elementEndDate}=   get webelements  ${input_timeEnd}
    ${i}=      set variable  1

    FOR    ${element}    IN   @{elementStartDate}
        click element  ${element}
        wait until page contains element  ${value_startTimePicker}
        ${valueElement}=    get webelements  ${value_startTimePicker}
        scroll element into view  ${valueElement}[-1]
        click element   ${valueElement}[-1]
        wait until element is enabled   ${btn_summitPicker}
        ${valueElement}=    get webelements  ${btn_summitPicker}
        scroll element into view  ${valueElement}[-1]
        click element   ${valueElement}[-1]
    END

    FOR     ${element}     IN    @{elementEndDate}
        click element  ${element}
        wait until page contains element        ${value_endTimePicker}
        ${valueElement}=    get webelements  ${value_endTimePicker}
        scroll element into view  ${valueElement}[-1]
        click element   ${valueElement}[-1]
        wait until element is enabled   ${btn_summitPicker}
        ${valueElement}=    get webelements  ${btn_summitPicker}
        scroll element into view  ${valueElement}[-1]
        click element   ${valueElement}[-1]
    END

Step 2: Click On Button Submit Deal
    wait until element is visible   ${btn_submitDeal}
    click button    ${btn_submitDeal}

Step 2: Not Display Error
    element should not be visible  ${popup_error}

Create Deal: Create deal success
    Step 1: Search By Product Name   Ví Nam Đứng Da Bò Thật
    Step 1: Click Add All Product
    Step 1: CLick Next To Step2 Button
    Step 2: Input Price Discount Percent    10
    Step 2: Input Special Quantity      3
    Step 2: Input Limit Quantity        1
    Step 2: Input Date      2021/12/20      2021/12/21
    sleep  2s
    Step 2: Click On Button Submit Deal
    Step 2: Not Display Error
    sleep  2s