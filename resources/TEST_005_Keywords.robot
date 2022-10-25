*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/shopping_cart_locators.py

*** Variables ***
${URL}    https://www.verkkokauppa.com/        
${BROWSER}    Chrome 

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Select A Product And Click Add To Cart
    ${selected_product_title}=    Get Element Attribute    ${product}    title  
    Click Element    ${btn_add_to_cart}
    Set Global Variable    ${selected_product_title}
    Sleep    2s


Check The Number of Items in The Cart is Equal To One

    Element Attribute Value Should Be    ${tag_i_no_of_items_in_cart}    data-qty    1
    Element Attribute Value Should Be    ${tag_i_nav_no_of_items_in_cart}    data-qty    1

Check Cart Contains The Added Product
    
    Click Element    ${shopping_cart_link}
    Sleep    2s
    Element Attribute Value Should Be    ${product_on_cart}    title    ${selected_product_title}

    
    

    

        
    
       
    




