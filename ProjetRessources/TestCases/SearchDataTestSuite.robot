*** Settings ***
Library    OperatingSystem 
Library    SeleniumLibrary    
Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  
*** Variables ***
${browser}=     chrome
${url}=        https://login.salesforce.com/?locale=ca

*** Test Cases ***
TC_001 
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    ${title}=    Get Title
    Log To Console    ${title}    
    ${value}=    Get Value    id=Login
    Log To Console    ${value}    
    ${text}=    Get Text    id=mydomainLink
    Log To Console    ${text}    
    
   

