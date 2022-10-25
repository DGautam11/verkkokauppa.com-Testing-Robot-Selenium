*** Settings ***
Resource    ../resources/TEST_O10_keywords.robot
Suite Setup    Open URL

*** Test Cases ***
after logging out and logging in, user must be able to see the favourite items
    Sleep    2s
    Click Allow cookies
    Sleep    2s
    login to check if the favourite items are saved
    Sleep    2s
    