*** Settings ***
Resource    ../resources/TEST_007_Keywords.robot
Suite Setup    Open URL
Suite Teardown    Close Browser

*** Variables ***
${email}    sandm22@email.com
${password}    1234567ab    
${fname}    group
${lname}    work
${pNumber}    1234567


*** Test Cases ***
User must be able to register to create a new account
    [Tags]    create_new_account
    Click Allow cookies
    Click Navbar Login Button
    Click On Create A New Account
    Fill Up The Create Account Form    ${email}    ${password}    ${fname}    ${lname}    ${pNumber}
    Submit The Information
    Check The User Is LoggedIn And Redirected To Customer Account Page
    Check The Information Shown In The Account Page Match The Input Information    ${fname}    ${lname}    ${email}    ${pNumber}