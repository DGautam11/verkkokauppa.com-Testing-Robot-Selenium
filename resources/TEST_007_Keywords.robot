*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/signup_locators.py
Variables    ../page_objects/homepage_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome

${email}    sandman@email.com
${password}    1234567ab    
${fname}    group
${lname}    work
${pNumber}    1234567

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Click Allow cookies
    Click Button    ${btn_accept_cookies}

click login button and press create new account
    Click Element    ${btn_login}
    Sleep    2s
    Click Element    ${btn_create_new_account}
    Sleep    2s
    Click Element    ${input_email}
    Input Text    ${input_email}    ${email}   
    Sleep    2s
    Input Password    ${input_password}    ${password}
    Sleep    2s
    Input Text    ${input_firstname}    ${fname}
    Input Text    ${input_lastname}    ${lname}
    Input Text   ${input_ph_number}    ${pNumber}

    Click Element    ${select_language}
    Select From List By Label    ${select_language}    English 

    Click Element    ${user_consent_to_privacy_policy}
    Click Button    ${btn_submit_form}  

    Sleep    5s
    #Click Button    ${signup_complete}
   



    