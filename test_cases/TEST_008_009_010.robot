*** Settings ***
Resource    ../resources/TEST_008_009_010_Keyword.robot
Suite Setup    Open URL

#    Deepan Gautam    Suraj Kharel    Mohan Giri

*** Variables ***
${user_email}    sandman@email.com
${user_password}    1234567ab 
${fname}    group

*** Test Cases ***


Registered user must be able to login with correct username and password
    [Tags]    user_login
    Click Allow cookies
    Click Navbar Login Button
    Enter Email And Password    ${user_email}    ${user_password}
    Click Login
    Check User Is LoggedIn    ${fname}

Authenciated user must be able to add products into favourites
    [Tags]    add_to_fav
    Select Products And Click On Favourite Icon On Product Card
    Click On Favourites Button On Navbar
    Check The Product Added To Favourites Matches The Product On Favourite Page
    Sleep    2s

Authenciated user must be able to logout from their account
    [Tags]    user_logout
    Click User Account Menu Navbar
    Sleep    2s
    Click Logout
    
