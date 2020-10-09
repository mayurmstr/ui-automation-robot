*** Keywords ***
Wait and Click on Element
    [Arguments]    ${element_locator}       ${wait_time}=${configurable_wait_time}
    wait until element is visible  ${element_locator}     ${wait_time}
    Wait Until Element Is Enabled  ${element_locator}     ${wait_time}
    click element  ${element_locator}


Reload Current Page
    reload page
    Sleep   2s

Identify And Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Set Focus To Element    ${locator}
    Click Element    ${locator}