*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/register_login_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome 

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    2s

Hover The Login Button In The Navigation Bar
    Mouse Over    ${nav_login}