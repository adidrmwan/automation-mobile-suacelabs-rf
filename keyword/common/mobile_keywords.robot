*** Settings ***
Resource            ${EXECDIR}/lib/common_lib.robot
Resource            ${EXECDIR}/object/login_page.resource
Variables           ${EXECDIR}/data/common_data.py

*** Keywords ***
Open The Application
    [Arguments]            ${app}
    Open Application        ${appium_server}    
    ...     platformName=${android_plat_name}     
    ...     app=${app}   
    ...     autoGrantPermissions=true    
    ...     newCommandTimeout=1200
    ...     fullReset=true
    ...     automationName=UIAutomator2    
    ...     deviceName=${device_name}
    ...     appPackage=${app_package}
    ...     appActivity=${app_activity}