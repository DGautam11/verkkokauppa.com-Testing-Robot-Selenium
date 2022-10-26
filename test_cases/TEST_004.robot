*** Settings ***
Resource    ../resources/TEST_004_Keywords.robot
Suite Setup    Open URL
Suite Teardown    Close Browser

#    Deepan Gautam    Suraj Kharel    Mohan Giri

*** Test Cases ***
User must be able to see Esittely and Lisätiedot in product page
    Click On A Product
    Check Esittely and Lisätiedot Tabs Are Present in Page
    Check Esittely and Lisätiedot Tabs Are Clickable
