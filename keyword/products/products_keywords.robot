*** Settings ***
Resource            ${EXECDIR}/keyword/common/mobile_keywords.robot
Resource            ${EXECDIR}/object/products_page.resource

*** Keywords ***
Validate User On Products Page
    Wait Until Element Is Visible            ${product_title}        15
    Wait Until Element Is Visible            xpath=${item}        15