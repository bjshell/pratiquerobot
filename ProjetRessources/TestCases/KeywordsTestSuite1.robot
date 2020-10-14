*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary      
Resource    ../Resources/Resource1.robot

Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  



*** Test Cases ***
CT_001
    Open Browser and maximize
    