*** Settings ***
Resource            ${EXECDIR}/keyword/common/mobile_keywords.robot

*** Keywords ***
User Open Saucelabs Apps
    Open The Application                     ${EXECDIR}/app/saucelabs.apk
    Wait Until Element Is Visible            ${logo}            30

User Input Username To Username Field
    [Arguments]        ${username}
    Wait Until Element Is Visible        ${username_field}        15
    Input Text        ${username_field}        ${username}

User Input Password To Password Field
    [Arguments]        ${password}
    Wait Until Element Is Visible        ${password_field}        15
    Input Password        ${password_field}        ${password}

User Press Login Button
    Wait Until Element Is Visible    ${login_btn}        15
    Click Element        ${login_btn}

Validate User See Error Message Was Displayed
    Wait Until Element Is Visible          ${error_message}        15
    Page Should Contain Text               Username and password do not match any user in this service.