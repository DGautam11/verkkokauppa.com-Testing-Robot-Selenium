*** Settings ***
Resource    ../resources/TEST_008_Keywords.robot
Suite Setup    open URL


*** Variables ***
${email}    sandm22@email.com
${password}    1234567ab 

*** Test Cases ***
User is able to signing in 
    [Tags]    sign_in_user
    Click Allow cookies
    Click Navbar Login Button
    Filling Up the account    ${email}    ${password}
    Logging
user is able to logged out
    Logging out



