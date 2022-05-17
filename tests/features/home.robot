*** Settings ***
Library     String

Documentation    Test cases related to Demoblaze Homepage

Resource    ../../src/config/package.robot

Test Setup       Launch Browser
Test Teardown    Shutdown Browser

*** Test Case ***
Scenario: Create Account
    ${username} =    Generate Random String    8     [LOWER]
    User has accessed the homepage
    User has clicked on signup menu
    User has signed up successfully     ${username}

*** Test Case ***
Scenario: Login
    User has accessed the homepage
    User has clicked on login menu
    User has logged in successfully

*** Test Case ***
Scenario: Browse Phones
    User has accessed the homepage
    User navigates to Phones category

*** Test Case ***
Scenario: Browse Laptops
    User has accessed the homepage
    User navigates to Laptops category

*** Test Case ***
Scenario: Browse Monitors
    User has accessed the homepage
    User navigates to Monitors category

*** Test Case ***
Scenario: Play About Us Video
    User has accessed the homepage
    User has clicked on about us menu
    User plays about us video successfully

*** Test Case ***
Scenario: Send a message through Contact
    User has accessed the homepage
    User has clicked on contact menu
    User has sent a message successfully