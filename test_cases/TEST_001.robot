*** Settings ***
Resource    ../resources/TEST_001_Keywords.robot
Suite Setup    Open URL
Suite Teardown    Close Browser


*** Test Cases ***
Test wether there is icons for all product categories in navigation menu
    [Tags]    Categories_Icons
    Click Allow cookies
    Click Hamburger Menu
    Check icon is present for each product categories


