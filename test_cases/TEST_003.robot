*** Settings ***
Resource    ../resources/TEST_003_Keywords.robot
Suite Setup    Open URL
Suite Teardown    Close Browser   

*** Variables ***
${search_keyword}    PS5  

*** Test Cases ***
User must be able to search for ps5 and search results should be as per the search term 
    [Tags]    user_search
    Click On Search Box
    Input Search Keyword    ${search_keyword}
    Check Search Suggestions Contains The Search Keyword    ${search_keyword}
    Click Search Icon
    Take Element Screenshot From First Product
    Go To Product Page
    Check Product Page Contains The Search Keyword    ${search_keyword}


