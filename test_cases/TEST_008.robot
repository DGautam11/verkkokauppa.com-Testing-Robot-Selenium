*** Settings ***
Resource    ../resources/TEST_008_Keyword.robot
Suite Setup    Open URL


*** Variables ***
${user_email}    pacmann@email.com
${user_password}    1234567ab 

*** Test Cases ***

Authenciated user must be able to add products into favourites
    [Tags]    add_to_fav
    Click Allow cookies
    Click Navbar Login Button
    Enter Email And Password    ${user_email}    ${user_password}
    Click Login
    Select Products And Click On Favourite Icon On Product Card
    Click On Favourites Button On Navbar
    Check The Product Added To Favourites Matches The Product On Favourite Page