*** Settings ***
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/EShopVodafone.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER}  edge
# robot -d results tests/eshop.robot

*** Test Cases ***
Validate that Oppo product should be displayed in cart
    [Tags]  Smoke
    EShopVodafone.Verify vodafone egypt loaded and click on profile
    EShopVodafone.Login with valid crdentials
    EShopVodafone.Search for Samsung product with click
    EShopVodafone.Validate Oppo product add to cart

Validate that invalid address should be demeed all buttons
    [Tags]  Smoke
    EShopVodafone.Verify vodafone egypt loaded and click on profile
    EShopVodafone.Login with valid crdentials
    EShopVodafone.Validate Oppo product add to cart
    EShopVodafone.Click on checkout button
    EShopVodafone.Click on add address button
    EShopVodafone.Fill Shipping Information
    EShopVodafone.Validate Error message displayed and Save address button is dimmed

