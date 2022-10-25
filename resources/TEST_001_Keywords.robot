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
    FOR    ${counter}    IN RANGE    1    ${menu_items_count}

       ${icon}    Set Variable    xpath://*[@id="app"]/div[1]/div/aside/nav/div/div[2]/ul/li[${counter}]/a/span[1]/svg    
       Page Should Contain Element    ${icon}  
       Element Should Be Visible      ${icon}    
        
    END
     

    