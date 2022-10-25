*** Settings ***
Library    SeleniumLibrary
Variables    ../pages_objects/login_locator.py
Variables    ../page_objects/homepage_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome

*** Keywords ***
open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Click Allow cookies
    Click Button    ${btn_accept_cookies}

Click Navbar Login Button
     Click Element    ${btn_login}
     Sleep    2s

Filling Up the account
    [Arguments]    ${email}    ${password}
    Input Text    ${input_email}    ${email}
    Input Password    ${input_password}    ${password}

Logging
    Click Element    ${log_in}
    sleep    2s

Logging out
    Click Element    ${logout_user}
    Click Element    ${are_you_sure}
    
    

