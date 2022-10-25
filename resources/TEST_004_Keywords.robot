*** Settings ***
Library    SeleniumLibrary
Variables  ../page_objects/homepage_locators.py
Variables    ../page_objects/productpage_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome 


*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Click On A Product
    Scroll Element Into View    ${product}
    Click Element    ${product}
    Sleep    2s

Check Esittely and Lisätiedot Tabs Are Present in Page
    Scroll Element Into View    ${tabs_page_nav}    
    Page Should Contain Element    ${tabs_page_esittely}
    Page Should Contain Element    ${tabs_page_lisatiedot}

Check Esittely and Lisätiedot Tabs Are Clickable
    Click Element    ${tabs_page_esittely}
    Click Element    ${tabs_page_lisatiedot}




    
