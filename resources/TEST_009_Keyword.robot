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

Click On Search Box
    Click Element    ${search_bar}
    Maximize Browser Window

Input search Keyword
       
    Click Element    ${search_bar} 
    Input Text    ${search_bar}    ${search_keyword}  
    Sleep    2s
    Click Button    ${btn_search}
    Sleep    5s
    Click Element    ${btn_favourite}
    Sleep    2s

user should login to add item into favourite
    Click Element    ${login_section}
    Sleep    2s
    Click Element    ${form_email}
    Input Text    ${form_email}    ${email}
    Sleep    2s
    Click Element    ${form_password}
    Input Text    ${form_password}    ${password}
    Sleep    2s
    Click Button    ${submit_login_btn}
    Sleep    5s

click favourite icon
    Click Element    ${btn_favourite}
    Sleep    2s

Add another item to favourite list
    Click Element    ${search_bar} 
    Input Text    ${search_bar}    ${search_keyword2}  
    Sleep    2s
    Click Button    ${btn_search}
    Sleep    5s
    Click Element    ${btn_favourite2}
    sleep    2s


    


