*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Begin Web Test
    set selenium timeout  30 seconds
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window


End Web Test
    Close Browser