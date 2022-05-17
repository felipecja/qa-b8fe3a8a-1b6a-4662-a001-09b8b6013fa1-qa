*** Settings ***

Documentation    Keywords for homepage

*** Keywords ***
User has accessed the homepage
    Location Should Be              ${HOME.URL}
    Title Should Be                 ${HOME.TITLE}
    Wait Until Element Is Enabled   ${HOME.LINK_LOGO}
    Wait Until Element Is Enabled   ${HOME.BTN_NEXT}

User has clicked on signup menu
    Wait Until Element Is Enabled   ${HOME.LINK_MENU_SIGNUP}
    Click Element                   ${HOME.LINK_MENU_SIGNUP}
    Wait Until Element Is Visible   ${HOME.MODAL_SIGNUP}

User has clicked on login menu
    Wait Until Element Is Enabled   ${HOME.LINK_MENU_LOGIN}
    Click Element                   ${HOME.LINK_MENU_LOGIN}
    Wait Until Element Is Visible   ${HOME.MODAL_LOGIN}

User has clicked on about us menu
    Wait Until Element Is Enabled   ${HOME.LINK_MENU_ABOUTUS}
    Click Element                   ${HOME.LINK_MENU_ABOUTUS}
    Wait Until Element Is Visible   ${HOME.MODAL_ABOUTUS}

User has clicked on contact menu
    Wait Until Element Is Enabled   ${HOME.LINK_MENU_CONTACT}
    Click Element                   ${HOME.LINK_MENU_CONTACT}
    Wait Until Element Is Visible   ${HOME.MODAL_NEWMESSAGE}

User has clicked on cart menu
    Wait Until Element Is Enabled   ${HOME.LINK_MENU_CART}
    Click Element                   ${HOME.LINK_MENU_CART}
    Wait Until Element Is Visible   ${CART.BTN_PLACE_ORDER}

User has signed up successfully
    [Arguments]     ${username}
    Wait Until Element Is Enabled   ${HOME.INPUT_SIGNUP_USERNAME}
    Input Text                      ${HOME.INPUT_SIGNUP_USERNAME}       ${username}
    Input Text                      ${HOME.INPUT_SIGNUP_PASSWORD}       ${SIGNUP.PASSWORD}
    Click Element                   ${HOME.BTN_SIGNUP}
    Alert Should Be Present         Sign up successful.

User has logged in successfully
    Wait Until Element Is Enabled   ${HOME.INPUT_LOGIN_USERNAME}
    Input Text                      ${HOME.INPUT_LOGIN_USERNAME}        ${LOGIN.USERNAME}
    Input Text                      ${HOME.INPUT_LOGIN_PASSWORD}        ${LOGIN.PASSWORD}
    Click Element                   ${HOME.BTN_LOGIN}
    Wait Until Page Contains        Welcome ${LOGIN.USERNAME}

User has sent a message successfully
    Wait Until Element Is Enabled   ${HOME.INPUT_CONTACT_EMAIL}
    Input Text                      ${HOME.INPUT_CONTACT_EMAIL}         ${CONTACT.EMAIL}
    Input Text                      ${HOME.INPUT_CONTACT_NAME}          ${CONTACT.NAME}
    Input Text                      ${HOME.INPUT_CONTACT_MESSAGE}       ${CONTACT.MESSAGE}
    Click Element                   ${HOME.BTN_SEND_MESSAGE}
    Alert Should Be Present         Thanks for the message!!

User plays about us video successfully
    Wait Until Element Is Enabled   ${HOME.BTN_ABOUTUS_PLAY_VIDEO}
    Click Element                   ${HOME.BTN_ABOUTUS_PLAY_VIDEO}
    Click Element                   ${HOME.BTN_ABOUTUS_FULL_SCREEN}

User navigates to Phones category
    Click Element                   ${HOME.LINK_CATEGORY_PHONES}
    Wait Until Page Contains        HTC One M9

User navigates to Laptops category
    Click Element                   ${HOME.LINK_CATEGORY_LAPTOPS}
    Wait Until Page Contains        MacBook Pro

User navigates to Monitors category
    Click Element                   ${HOME.LINK_CATEGORY_MONITORS}
    Wait Until Page Contains        ASUS Full HD
