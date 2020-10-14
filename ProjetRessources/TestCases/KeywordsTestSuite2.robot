*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary      
Resource    ../Resources/Resource2.robot

Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  

*** Variables ***
${url}    https://google.com/


*** Test Cases ***
CT_001
    Open Browser and maximize    ${url}    
    