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
    ${var1}=    Get Location  
    Log To Console    ${var1}    
    
    ${var2}=    Get Source
    Log To Console    ${var2}    
    
    ${var3}=     Get Element Attribute    id=username    type
    Log To Console    ${var3}    

