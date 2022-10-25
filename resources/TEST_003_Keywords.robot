*** Settings ***
Library    SeleniumLibrary
Library    XML
Variables  ../page_objects/search_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome 
 

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Click On Search Box
    Click Element    ${txt_searchinput}

Input Search Keyword
    [Arguments]    ${search_keyword}
    Input Text    ${txt_searchinput}    ${search_keyword}    clear=False
    Wait Until Page Contains Element    ${section_search_suggestions_products}
Check Search Suggestions Contains The Search Keyword
    [Arguments]    ${search_keyword}
    Element Should Contain    ${section_search_suggestions_products}    ${search_keyword}
    

Click Search Icon
    Click Element    ${icon_search_submit}
    Wait Until Page Contains Element    ${first_search_result}
    
Take Element Screenshot From First Product
    Capture Element Screenshot    ${first_search_result}    

Go To Product Page
    Click Element    ${first_search_result}
    

Check Product Page Contains The Search Keyword
    [Arguments]    ${search_keyword}
    Sleep    2s 
    Page Should Contain    ${search_keyword}
    

