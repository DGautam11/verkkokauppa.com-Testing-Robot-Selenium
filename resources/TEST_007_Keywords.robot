*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/register_login_locators.py
Variables    ../page_objects/homepage_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome


*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Click Allow cookies
    Click Button    ${btn_accept_cookies}

Click Navbar Login Button
     Click Element    ${btn_login}
     Sleep    2s

Click On Create A New Account
   Click Element    ${btn_create_new_account}
   Sleep    2s

Fill Up The Create Account Form
    
    [Arguments]    ${email}    ${password}    ${fname}    ${lname}    ${pNumber}

    Input Text    ${input_email}    ${email}   
    Input Password    ${input_password}    ${password}
    Input Text    ${input_firstname}    ${fname}
    Input Text    ${input_lastname}    ${lname}
    Input Text   ${input_ph_number}    ${pNumber}

    Click Element    ${select_language}
    Select From List By Label    ${select_language}    English 

    Click Element    ${user_consent_to_privacy_policy}

Submit The Information
    Click Button    ${btn_submit_form}
    Sleep    2s 

Check The User Is LoggedIn And Redirected To Customer Account Page 
    Location Should Be    https://www.verkkokauppa.com/fi/account/customer

Check The Information Shown In The Account Page Match The Input Information

    [Arguments]    ${fname}     ${lname}    ${email}    ${pNumber}  

    Element Should Contain    ${info_name}    ${fname} ${lname}
    Element Should Contain       ${info_email}    ${email}
    Element Should Contain    ${info_phone}    ${pNumber}


