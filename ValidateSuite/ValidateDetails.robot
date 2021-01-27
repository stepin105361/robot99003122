*** Settings ***
Resource    ../Resources/common_functionality.resource
Resource    ../Resources/Pages/DestinationPage.resource
Resource    ../Resources/Pages/FarePage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify_Valid_Credentials


*** Test Cases ***
TC1    ccu

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
    Sleep    3s    
    
    Click Continue
    
    Click Login
    
    Fetch Pop-up
    
    Validate Pop-up    Please provide registered User Id (Mobile Number / Email) to proceed further.