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
    Wait Until Page Contains Element    ${btn_add_to_cart}

Select A Product And Click Add To Cart
    ${selected_product_title}=    Get Element Attribute    ${product}    title  
    Click Element    ${btn_add_to_cart}
    Set Global Variable    ${selected_product_title}
    Sleep    2s
    

Go To Shopping Cart Page
    
    Click Element    ${shopping_cart_link}
     

Delete The Added Product
    Wait Until Page Contains Element    ${btn_remove} 
    Click Element    ${btn_remove}
    

Notification is Displayed
    Wait Until Element Is Visible    ${span_notification}
    Element Should Contain        ${span_notification}    Tuote poistettu ostoskorista    
    Element Text Should Be    ${deleted_product}    ${selected_product_title}    

        

    
        

