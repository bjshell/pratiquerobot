*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary      
Resource    ../Resources/Resource4.robot

Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  

 


*** Test Cases ***
CT_001   
    [Setup]        Start keyword and maximize
    [Teardown]        Get title and close browser
    Input Text    id=txtUsername    Admin    
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin        

CT_002
    [Setup]        Start keyword and maximize
    [Teardown]        Get title and close browser
    Input Text    id=txtUsername    Admin    
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin
    Page Should Contain Button    Dashboard123    



