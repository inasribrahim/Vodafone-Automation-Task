*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SAVE_BUTTON} =    css:.btn-primary.delievry--btn--checkout


*** Keywords ***
Scroll down
    Execute JavaScript    window.scrollBy(0, 400);

Click on add address button
    Sleep    5s
    Execute JavaScript    document.querySelector('.add-address').click();

Select City
    ${city_selector} =  Set Variable  xpath=//select[@formcontrolname='city']
    ${visible_text} =  Set Variable  Cairo
    Select From List by Label  ${city_selector}  ${visible_text}

Select District
    ${district_selector} =  Set Variable  xpath=//select[@formcontrolname='district']
    ${visible_text} =  Set Variable   El Zaytoun
    Select From List by Label  ${district_selector}  ${visible_text}

Enter Street Name
    ${streetname_selector} =  Set Variable  xpath=//input[@formcontrolname='streetName']
    Input Text  ${streetname_selector}  5 street mohammed badr

Enter Building Number
    ${buildingNo_selector} =  Set Variable  xpath=//input[@formcontrolname='buildingNo']
    Input Text  ${buildingNo_selector}  Wrong Information

Enter Floor Number
    ${floorNo_selector} =  Set Variable  xpath=//input[@formcontrolname='floorNo']
    Input Text  ${floorNo_selector}  Wrong Information

Enter Department Number
    ${appartmentNo_selector} =  Set Variable  xpath=//input[@formcontrolname='appartmentNo']
    Input Text  ${appartmentNo_selector}  Wrong Information


Validate Error message displayed and Save address button is dimmed
    Sleep    5s
    Element Should Be Visible  css:.error
    Scroll down
    Element Should Be Disabled  ${SAVE_BUTTON}





