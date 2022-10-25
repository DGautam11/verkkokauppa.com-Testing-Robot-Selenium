*** Settings ***
Resource    ../resources/TEST_007_Keywords.robot
Suite Setup    Open URL
#Suite Teardown    Close Browser


*** Test Cases ***
User must be able to signup
    [Tags]    user_signup
    Click Allow cookies
    click login button and press create new account
