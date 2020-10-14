*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary      
Resource    ../Resources/Resource3.robot

Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
CT_001
    ${t}    Open Browser and maximize    ${url}    
    Log To Console    Title is ${t}.    
    Close Browser
