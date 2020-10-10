*** Settings ***
Variables           ../Locators/test_website_locator.py

*** Keywords ***
Go to Simple Form Demo
    ${IsElementVisible}=  Run Keyword And Return Status    Element Should Be Visible   ${overlay_div}
    Run Keyword If    ${IsElementVisible}   Wait and Click on Element  ${no_thanks_btn}
    Wait and Click on Element       ${input_forms_dropdown}
    Wait and Click on Element       ${simple_form_demo_link}
