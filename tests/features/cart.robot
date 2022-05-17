*** Settings ***
Documentation    Scenarios related to cart page

Resource    ../../src/config/package.robot

Test Setup       Launch Browser
Test Teardown    Shutdown Browser

*** Test Case ***
Scenario: Add laptop to cart (Shopping cart)
    User has accessed the homepage
    User navigates to Laptops category
    User adds first item to cart
    User has clicked on cart menu

Scenario: Checkout
    User has accessed the homepage
    User navigates to Monitors category
    User adds first item to cart
    User has clicked on cart menu
    User checks out successfully