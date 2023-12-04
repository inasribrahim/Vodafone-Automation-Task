*** Settings ***
Library  SeleniumLibrary

Resource  ../Configurations/Environments.resource

*** Variables ***
${MSISDN_USERNAME_INPUT} =     id=username
${MSISDN_PASSWORD_INPUT} =   id=password
${LOGIN} =  id=submitBtn

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${REGISTER_EMAIL_INPUT}

Login with Credentials
    Fill Msisdn Username
    Fill Msisdn Password
    Click on Login Button
    Sleep  5s

Fill Msisdn Username
    Wait Until Element Is Visible   ${MSISDN_USERNAME_INPUT}
    Input Text  ${MSISDN_USERNAME_INPUT}  ${msisdn}

Fill Msisdn Password
    Wait Until Element Is Visible   ${MSISDN_PASSWORD_INPUT}
    Input Text  ${MSISDN_PASSWORD_INPUT}   ${password}

Click on Login Button
    Click Button  ${LOGIN}