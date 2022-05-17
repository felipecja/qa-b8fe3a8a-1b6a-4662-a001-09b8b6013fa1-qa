*** Settings ***
Documentation    Cart Page Elements, mapped via xpath

*** Variables ***
&{CART}
...     BTN_PLACE_ORDER=xpath://button[text()='Place Order']
...     LINK_DELETE=xpath://a[text()='Delete']
...     MODAL_PLACE_ORDER=xpath://h5[contains(text(), 'Place order')]/parent::div[(@class='modal-header')]

...     INPUT_NAME=xpath://input[@id='name']
...     INPUT_COUNTRY=xpath://input[@id='country']
...     INPUT_CITY=xpath://input[@id='city']
...     INPUT_CREDIT_CARD=xpath://input[@id='card']
...     INPUT_MONTH=xpath://input[@id='month']
...     INPUT_YEAR=xpath://input[@id='year']

...     BTN_PURCHASE=xpath://button[text()='Purchase']