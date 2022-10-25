*** Settings ***
Library    SeleniumLibrary
Variables  ../page_objects/homepage_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome    

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Check if each product category has landing page
    ${product_categories}=    Get WebElements    ${nav_menus_links}
    Log    ${product_categories}    



