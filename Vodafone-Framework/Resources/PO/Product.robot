*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_INPUT} =    id=searchInput
${SEARCH_RESULT} =    xpath=//p[text()=" In Smart Phones "]
${COLOR_BLUE} =   xpath=//button[@title="Dreamy Blue"]
${COLOR_BLACK} =   xpath=//button[@title="BLACK"]
${ADD_TO_CART}  =  css:.add-to-cart
${BUT_NOW}  =  css:.buy-now
@{PRODUCT_COLORS}  =  xpath=//div[@class="color-switcher color-switcher-mobile"]//button
${SUCCESS_MESSAGE} =  //p[text()='Item added to cart successfully!']
*** Keywords ***
Enter samsung in search
    Input Text  ${SEARCH_INPUT}  samsung

Scroll up
    Execute JavaScript  window.scrollTo(0, -700);

Scroll down
    Execute JavaScript    window.scrollBy(0, 700);

Click on samsung with in smart phones deals
    Wait Until Element Is Visible  ${SEARCH_RESULT}
    Click Element  ${SEARCH_RESULT}
    Sleep  10s
    Execute JavaScript    document.getElementById('searchInput').value = '';

Click on Oppo button
    ${OPPO_BUTTON}=     Execute JavaScript    return document.evaluate("//*[contains(text(), 'Oppo')]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
    Click Element    ${OPPO_BUTTON}
    Sleep  10s
    Scroll down
    Sleep  10s


Click on OPPO Smart Phone A98 (5G) in product list
    Click on product
    Sleep  10s
    Execute JavaScript    window.scrollBy(0, 300);
    Validate Product Colors

Click on product
     Sleep  10s
     Click Element    xpath=//*[starts-with(text(), " OPPO Smart Phone A98")]

Validate Product Colors
    Sleep  2s
    @{product_colors} =  Get WebElements  css:.color-switcher.color-switcher-mobile button
    ${add_to_product} =  Set Variable  css:.add-to-cart
    Execute JavaScript    window.scrollBy(0, 400);
    Sleep    6s
    ${script} =  Set Variable  document.querySelector('.add-to-cart').click()
    Run Keyword If  True  Execute JavaScript  try {${script}} catch(e) {}



