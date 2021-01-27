*** Settings ***
Documentation    This page will handle all the functions related to the first TO and FROM page.

Resource    ../common_functionality.resource

*** Variables ***
${ROUNDTRP_LOC}    id=ctl00_mainContent_rbtnl_Trip_1
${FRM_LOC}    id=ctl00_mainContent_ddl_originStation1_CTXT
${FRMCTY_LOC}    //a[text()=" Delhi (DEL)"]
${TO_LOC}    id=ctl00_mainContent_ddl_destinationStation1_CTXT
${DEPARTDATE_LOC}    xpath=(//a[@class="ui-state-default"])[5]
${RETURNDATE_ICONLOC}    xpath=(//button[@class="ui-datepicker-trigger"])[2]
${RETURNDATE_LOC}    xpath=(//a[@class="ui-state-default"])[9]
${PASS_LOC}    //div[@class="paxinfo"]
${ADULT_LOC}    ctl00_mainContent_ddl_Adult
${INFANT_LOC}    id=ctl00_mainContent_ddl_Infant
${CURRENCY_LOC}    id=ctl00_mainContent_DropDownListCurrency
${USD_LOC}    //option[text()='USD']
${SEARCH_LOC}    id=ctl00_mainContent_btn_FindFlights

*** Keywords ***

Select Roundtrip
    Click Element    ${ROUNDTRP_LOC}

Enter From Location
    Click Element    ${FRM_LOC}    
    Click Element    ${FRMCTY_LOC}
    
Enter To Location
    [Arguments]    ${city}
    Click Element    ${TO_LOC}    
    Input Text    ${TO_LOC}    ${city}    

Enter Journey Dates
    Click Element    ${DEPARTDATE_LOC}    
    Click Element    ${RETURNDATE_ICONLOC}    
    Click Element    ${RETURNDATE_LOC}    

Enter Passenger Details
    [Arguments]    ${adult}    ${infant}
    Click Element    ${PASS_LOC}
    Select From List By Label    ${ADULT_LOC}    ${adult}
    Select From List By Label    ${INFANT_LOC}    ${infant}
    Click Element    ${PASS_LOC}    

Enter Currency
    Click Element    ${CURRENCY_LOC}    
    Click Element    ${USD_LOC}    

Click Search
    Click Element    ${SEARCH_LOC}    
    
