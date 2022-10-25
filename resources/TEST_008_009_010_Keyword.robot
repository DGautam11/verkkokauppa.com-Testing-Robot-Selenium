*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/homepage_locators.py
Variables    ../page_objects/register_login_locators.py
Variables    ../page_objects/favouritespage_locator.py

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

Enter Email And Password
    [Arguments]    ${user_email}    ${user_password}    
    Input Text    ${txt_login_email}    ${user_email}
    Input Password    ${pwd_login_password}    ${user_password}
Click Login
    Click Element    ${submit_login_btn}
    Sleep    2s

Check User Is LoggedIn
    
    [Arguments]    ${fname}
    Element Should Contain    ${user_info}    Hei, ${fname}!    

Click User Account Menu Navbar
    Click Element    ${logout_section}
    Sleep    2s

Click Logout
    Click Element    ${logout_icon}

Select Products And Click On Favourite Icon On Product Card
    Click Button    ${product_one_fav_icon}
    Click Button    ${product_two_fav_icon}
    ${product_one}=    Get Element Attribute    ${product_one_link}    title
    ${product_two}=    Get Element Attribute    ${product_two_link}    title

    Set Global Variable    ${product_one}
    Set Global Variable    ${product_two}

Click On Favourites Button On Navbar
    Click Element    ${fav_icon_navbar}
    Sleep    2s
    Location Should Be    https://www.verkkokauppa.com/fi/favorites

Check The Product Added To Favourites Matches The Product On Favourite Page
    Element Should Contain    ${product_one_info}    ${product_one}
    Element Should Contain    ${product_two_info}    ${product_two}
    


    

    
    
