*** Settings ***
Documentation    This file contains all the basic functionalities

Library    OperatingSystem        
Library    SeleniumLibrary    

*** Variables ***

${BROWSER_NAME}    chrome
${URL}    https://www.spicejet.com/

*** Keywords ***
Launch Browser
    Append To Environment Variable    Path    ${OUTPUT_DIR}${/}driver
    Open Browser    browser=${BROWSER_NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=${URL}
    #wind
End Browser
    Close Browser