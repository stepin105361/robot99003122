*** Settings ***
Resource    ../Resources/common_functionality.resource
Resource    ../Resources/Pages/DestinationPage.resource
Resource    ../Resources/Pages/FarePage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify_Valid_Credentials


*** Test Cases ***
TC1    ccu
TC2    hyd


*** Keywords ***
Verify_Valid_Credentials
    [Arguments]    ${loc}
    Select Roundtrip
    
    Enter From Location
    
    Enter To Location    ${loc}
    
    Enter Journey Dates
    
    Enter Passenger Details    4    2
    
    Enter Currency
    
    Click Search
    
    Fetch Text    Delhi to Kolkata
    
    Fetch Price    345.88
    