*** Settings ***
Resource  ../Resources/PO/EShopLandingPage.robot
Resource  ../Resources/PO/Register.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Shipping.robot


*** Keywords ***
Verify vodafone egypt loaded and click on profile
    EShopLandingPage.Load
    EShopLandingPage.Accept Cookies
    EShopLandingPage.Verify Vodafone Egypt Loaded
    EShopLandingPage.Click On Profile Menu

Login with valid crdentials
    Register.Login with Credentials

Search for Samsung product with click
    Product.Enter samsung in search
    Product.Click on samsung with in smart phones deals
    Product.Click on Oppo button
    Product.Click on OPPO Smart Phone A98 (5G) in product list

Validate Oppo product add to cart
    Cart.Click on cart button
    Cart.Validate Product Added To Cart

Click on checkout button
    Cart.Click on check out button

Click on add address button
    Sleep    10s
    Shipping.Click on add address button

Fill Shipping Information
    Shipping.Select City
    Shipping.Select District
    Shipping.Enter Street Name
    Shipping.Enter Building Number
    Shipping.Enter Floor Number
    Shipping.Enter Department Number

Validate Error message displayed and Save address button is dimmed
    Shipping.Validate Error message displayed and Save address button is dimmed


