*** Settings ***
Resource    ../resources/TEST_002_Keyword.robot
Suite Setup    Open URL
Suite Teardown    Close Browser


*** Test Cases ***
Test wether there is landing page for each product category
    [Tags]    Categories_Landing_Page
    Check if each product category has landing page

    