*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${browser}    chrome
${url}        https://opensource-demo.orangehrmlive.com/




*** Keywords ***
Open Browser and maximize
    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    
