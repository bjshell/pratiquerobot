*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}=     chrome     
${url}=    https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Start keyword and maximize
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    

Get title and close browser
    ${title}=    Get Title
    Log To Console    ${title}    
    Close Browser
    
    

    