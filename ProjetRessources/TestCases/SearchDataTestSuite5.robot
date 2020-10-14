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
    Set Selenium Speed   2s
    # Select Radio Button    gender    male
    # Select Checkbox    id=checkbox2
    # Unselect Checkbox    id=checkbox1
    # Click Element    id=checkbox1    
    Click Link    id=link1    
    Sleep    5s
    Close Browser    