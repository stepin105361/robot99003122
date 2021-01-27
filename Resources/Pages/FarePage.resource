*** Settings ***
Documentation    This page will handle all the functions related to the fare page.

Resource    ../common_functionality.resource

*** Variables ***
${TEXT1_LOC}    //span[@class="trip-detrails-sector"]
${TEXT2_LOC}    //span[@class="floatLeft font-size-20"]
${CONTINUE_LOC}    //span[@class="button-continue-text"]
${LOGIN_LOC}    id=ControlGroupLoginModelPopUpView_MemberLoginView_ButtonLogIn
${POPUP_TXT_LOC}    id=popup_message

*** Keywords ***

Fetch Text
    [Arguments]    ${text2}
    ${text}    Get Text    ${TEXT1_LOC}
    Log To Console    ${text}    
    Element Text Should Be    ${TEXT1_LOC}    ${text2}
    
Fetch Price    
    [Arguments]    ${text3}
    ${text}    Get Text    ${TEXT2_LOC}
    Log To Console    ${text}    
    Element Text Should Be    ${TEXT2_LOC}    ${text3}

Click Continue
    Click Element    ${CONTINUE_LOC}    
    Comment    uhytgvb
Click Login
    Click Element    ${LOGIN_LOC}
    
Fetch Pop-up 
    ${text5}    Get Text    ${POPUP_TXT_LOC}
    Log To Console    ${text5}    

Validate Pop-up
    [Arguments]    ${text6}
    Element Text Should Be    ${POPUP_TXT_LOC}    ${text6}      