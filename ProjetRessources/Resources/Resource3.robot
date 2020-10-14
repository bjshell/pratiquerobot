*** Settings ***
Library    SeleniumLibrary    



*** Variables ***


*** Keywords ***
Open Browser and maximize
    [Arguments]    ${url}    ${browser}=chrome
    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    ${title}    Get Title
    [Return]    ${title} 
    
    
