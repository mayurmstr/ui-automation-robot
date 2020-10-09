*** Settings ***
Variables           ../Locators/test_website_locator.py

*** Keywords ***
Go to Simple Form Demo
    Wait and Click on Element       ${input_forms_dropdown}
    Wait and Click on Element       ${simple_form_demo_link}
