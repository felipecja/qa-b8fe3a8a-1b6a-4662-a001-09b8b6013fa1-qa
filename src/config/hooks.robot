*** Settings ***
Documentation    Setup and Teardown configuration

*** Keywords ***
Launch Browser
    Open Browser               about:blank                        ${CONFIG.BROWSER.NAME}
    Maximize Browser Window
    Go To                      ${CONFIG.BROWSER.URL}
    Set Selenium Timeout       ${CONFIG.BROWSER.IMPLICIT_WAIT}

Shutdown Browser
    Capture Page Screenshot
    Close browser