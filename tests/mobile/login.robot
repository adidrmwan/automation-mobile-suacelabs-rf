*** Settings ***
Resource            ${EXECDIR}/keyword/login/login_keywords.robot
Resource            ${EXECDIR}/keyword/products/products_keywords.robot
Test Teardown       Close Application

*** Test Cases ***
Verify user login using given credentials.
    User Open Saucelabs Apps
    User Input Username To Username Field        %{username}
    User Input Password To Password Field        %{password}
    User Press Login Button
    Validate User On Products Page

Verify failure message in case of invalid login credentials are entered by the user.
    User Open Saucelabs Apps
    User Input Username To Username Field        invalid_creds
    User Input Password To Password Field        %{password}
    User Press Login Button
    Validate User See Error Message Was Displayed