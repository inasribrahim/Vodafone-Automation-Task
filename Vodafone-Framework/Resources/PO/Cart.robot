*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECK_OUT_BUTTON} =   css:.checkout-btn

*** Keywords ***
Validate Product Added To Cart
    Sleep    10s
    Element Should Be Visible  xpath=//*[starts-with(text(), "OPPO Smart Phone A98")]

Click on cart button
    Scroll up
    Sleep    5s
    Execute JavaScript    document.querySelector('.cart-btn').click()

Click on check out button
    Wait Until Element Is Visible   ${CHECK_OUT_BUTTON}
    Click Button    ${CHECK_OUT_BUTTON}
