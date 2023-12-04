*** Settings ***
Library    RequestsLibrary

Resource  ../Resources/Environments.resource
Resource  ../Api.robot

*** Variables ***
${usersEndPoint}    api/users


*** Test Cases ***

Call the API Create User Account keyword
    ${response}=    Api.Create User Account    ibrahim     SDET
    Should Be Equal As Numbers    ${response.status_code}    201
    ${response_body}=    Set Variable    ${response.json()}
    Should Contain    ${response_body['name']}    ibrahim
    Should Contain    ${response_body['job']}    SDET


Validate that status code is success
    ${response}=    GET  url=${reqresBaseUrl}${usersEndPoint}?page=2
    Should Be Equal As Numbers    ${response.status_code}    200


Validate that total value in json match with response
    ${response}=    GET  url=${reqresBaseUrl}${usersEndPoint}?page=2
    Should Be Equal As Strings    12  ${response.json()}[total]


Validate that total value in json not match with response
    ${response}=    GET  url=${reqresBaseUrl}${usersEndPoint}?page=2
    Should Not Be Equal As Strings   13  ${response.json()}[total]

Validate that User 2 is delete
    ${response}=    Delete  url=${reqresBaseUrl}${usersEndPoint}/page/2
    Should Be Equal As Numbers    ${response.status_code}    204
