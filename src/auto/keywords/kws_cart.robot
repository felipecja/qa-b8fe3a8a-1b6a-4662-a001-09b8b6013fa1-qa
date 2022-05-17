*** Settings ***
Documentation    Keywords for homepage

*** Keywords ***
User adds first item to cart
    Wait Until Element is Enabled   ${HOME.LINK_FIRST_PRODUCT}
    Click Element                   ${HOME.LINK_FIRST_PRODUCT}
    Wait Until Element is Enabled   ${PRODUCT.LINK_ADD_TO_CART}
    Click Element                   ${PRODUCT.LINK_ADD_TO_CART}
    Alert Should Be Present         Product added

User checks out successfully
    Click Element                   ${CART.BTN_PLACE_ORDER}
    Wait Until Element Is Visible   ${CART.MODAL_PLACE_ORDER}
    Input Text                      ${CART.INPUT_NAME}                  ${CHECKOUT.NAME}
    Input Text                      ${CART.INPUT_COUNTRY}               ${CHECKOUT.COUNTRY}
    Input Text                      ${CART.INPUT_CITY}                  ${CHECKOUT.CITY}
    Input Text                      ${CART.INPUT_CREDIT_CARD}           ${CHECKOUT.CREDIT_CARD}
    Input Text                      ${CART.INPUT_MONTH}                 ${CHECKOUT.MONTH}
    Input Text                      ${CART.INPUT_YEAR}                  ${CHECKOUT.YEAR}
    Click Element                   ${CART.BTN_PURCHASE}
    Wait Until Page Contains        Thank you for your purchase!