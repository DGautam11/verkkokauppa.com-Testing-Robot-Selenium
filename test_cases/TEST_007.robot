*** Settings ***
Resource    ../resources/TEST_007_Keyword.robot
Suite Setup    Open URL


*** Test Cases ***
User Must Be Able To Register To Create A New Account
    [Tags]    create_a_new_account
    Hover The Login Button In The Navigation Bar
    
