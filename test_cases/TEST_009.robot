*** Settings ***
Resource    ../resources/TEST_009_Keyword.robot
Suite Setup    Open URL


*** Variables ***

*** Test Cases ***

user must be able to add an item into favourite list
    [Tags]    add_to_fav
    Sleep    2s
    Click Allow cookies
    Sleep    2s
    Click On Search Box
    Sleep    2s
    Input search Keyword
    Sleep    2s
    user should login to add item into favourite
    Sleep    2s
    login successful, user name visible at navbar
    Sleep    2s
    click favourite icon
    Sleep    2s
    Add another item to favourite list
    Sleep    2s
    logout
    Sleep    2s