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
    Set Selenium Speed    5s
    Input Text    id=username    Admin    
    Input Text    id=password    admin123      
    Clear Element Text    id=username
