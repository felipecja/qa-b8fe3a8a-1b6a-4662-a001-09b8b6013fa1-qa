*** Settings ***
Documentation    Homepage Elements

*** Variables ***
&{HOME}
...     URL=https://www.demoblaze.com/
...     TITLE=STORE

...     LINK_LOGO=xpath://img[@src='bm.png']/parent::a[@href='index.html']
...     LINK_MENU_SIGNUP=xpath://a[text()='Sign up']
...     LINK_MENU_LOGIN=xpath://a[text()='Log in']
...     LINK_MENU_ABOUTUS=xpath://a[text()='About us']
...     LINK_MENU_CONTACT=xpath://a[text()='Contact']
...     LINK_MENU_CART=xpath://a[text()='Cart']

...     MODAL_SIGNUP=xpath://h5[contains(text(), 'Sign up')]/parent::div[(@class='modal-header')]
...     MODAL_LOGIN=xpath://h5[contains(text(), 'Log in')]/parent::div[(@class='modal-header')]
...     MODAL_ABOUTUS=xpath://h5[contains(text(), 'About us')]/parent::div[(@class='modal-header')]
...     MODAL_NEWMESSAGE=xpath://h5[contains(text(), 'New message')]/parent::div[(@class='modal-header')]

...     INPUT_SIGNUP_USERNAME=xpath://input[@id='sign-username']
...     INPUT_SIGNUP_PASSWORD=xpath://input[@id='sign-password']
...     INPUT_LOGIN_USERNAME=xpath://input[@id='loginusername']
...     INPUT_LOGIN_PASSWORD=xpath://input[@id='loginpassword']
...     INPUT_CONTACT_EMAIL=xpath://input[@id='recipient-email']
...     INPUT_CONTACT_NAME=xpath://input[@id='recipient-name']
...     INPUT_CONTACT_MESSAGE=xpath://textarea[@id='message-text']

...     BTN_SIGNUP=xpath://button[text()='Sign up']
...     BTN_LOGIN=xpath://button[text()='Log in']
...     BTN_SEND_MESSAGE=xpath://button[text()='Send message']
...     BTN_NEXT=xpath://button[text()='Next']
...     BTN_ABOUTUS_PLAY_VIDEO=xpath://button[@title='Play Video']
...     BTN_ABOUTUS_FULL_SCREEN=xpath://button[@title='Fullscreen']

...     LINK_CATEGORY_PHONES=xpath://a[text()='Phones']
...     LINK_CATEGORY_LAPTOPS=xpath://a[text()='Laptops']
...     LINK_CATEGORY_MONITORS=xpath://a[text()='Monitors']

...     LINK_FIRST_PRODUCT=xpath://a[@class='hrefch' and contains(@href, 'prod.html')]