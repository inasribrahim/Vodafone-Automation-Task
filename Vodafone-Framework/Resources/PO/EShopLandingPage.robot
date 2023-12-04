*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ACCEPT_COOKIES_BUTTON} =   id=onetrust-accept-btn-handler
${PROFILE_MENU}  =   document.querySelector('vf-user-profile button').click();

*** Keywords ***
Load
    Go To  https://eshop.vodafone.com.eg/en/
    Sleep    20s

Accept Cookies
    Click Button  ${ACCEPT_COOKIES_BUTTON}

Verify Vodafone Egypt Loaded
    ${title}=    Get Title
    Should Be Equal As Strings    ${title}   Vodafone Egypt E-Shop | Online Shopping

Click On Profile Menu
    Execute JavaScript    document.querySelector('vf-user-profile button').click();

