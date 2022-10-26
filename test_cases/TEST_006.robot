*** Settings ***
Resource    ../resources/TEST_006_Keywords.robot
Suite Setup    Open URL
Suite Teardown    Close Browser

#    Deepan Gautam    Suraj Kharel    Mohan Giri

*** Test Cases ***
User must be able to remove added products from the cart
    [Tags]    delete_product_from_cart
    Select A Product And Click Add To Cart
    Go To Shopping Cart Page
    Delete The Added Product
    Notification is Displayed
