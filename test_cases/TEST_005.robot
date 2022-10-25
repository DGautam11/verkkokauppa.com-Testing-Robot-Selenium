*** Settings ***
Resource    ../resources/TEST_005_Keywords.robot
Suite Setup    Open URL
Suite Teardown    Close Browser

*** Test Cases ***
User must be able to add product to the cart 
    [Tags]    add_to_cart 
    Select A Product And Click Add To Cart
    Check The Number of Items in The Cart is Equal To One
    Check Cart Contains The Added Product

