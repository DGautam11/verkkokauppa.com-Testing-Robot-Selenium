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

Click Allow cookies
    Click Button    ${btn_accept_cookies}

Click Hamburger Menu
    Click Element    ${nav_menu_hemburger}

Check icon is present for each product categories
    ${menu_items_count}=     Get Element Count    ${nav_menu_items}
     

    