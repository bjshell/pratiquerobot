*** Settings ***
Library    OperatingSystem 
Library    SeleniumLibrary    
Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  
  
 
 
*** Variables ***
${browser}=     chrome
${url}=        http://omayo.blogspot.com/

*** Test Cases ***
TC_001
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed   1s
    Select From List By Label    id=multiselect1    Volvo
    Select From List By Value    id=multiselect1    audix
    Select From List By index    id=multiselect1    1
    Sleep    5s
    Close Browser
