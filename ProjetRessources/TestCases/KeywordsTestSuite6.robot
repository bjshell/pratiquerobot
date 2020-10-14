*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary      
Resource    ../Resources/Resource4.robot

Suite Setup    Append To Environment Variable    PATH    /Users/%{USER}/Documents/WebDrivers  

Test Setup    Log    suite setup    
Test Teardown    Log    suite teardown           
          

*** Test Cases ***
CT_001   
    Log    je suis test1          
    
CT_002   
    Log    je suis test2   
     
CT_003  
    Log    je suis test3  
    
CT_004 
    Log    je suis test4  
    




