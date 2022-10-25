*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/favourites_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome 
${email}    pacmann@email.com
${password}    1234567ab    
${search_keyword}    samsung remote control
${search_keyword2}    sony remote control

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Click Allow cookies
    Click Button    ${btn_accept_cookies}

login to check if the favourite items are saved
    Click Element    ${login_section}
    Sleep    2s
    Click Element    ${form_email}
    Input Text    ${form_email}    ${email}
    Sleep    2sbb cTEST_001
    Click Element    ${form_password}
    Input Text    ${form_password}    ${password}
    Sleep    2s
    Click Button    ${submit_login_btn}
    Sleep    5s
    Click Element    ${favourite_icon}
    sleep    2s

