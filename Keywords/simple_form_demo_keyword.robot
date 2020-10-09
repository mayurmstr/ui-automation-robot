*** Settings ***
Variables           ../Locators/simple_form_demo_locator.py

*** Keywords ***
Enter Your Message
    [Arguments]             ${message_to_add}
    input text  ${user_message_textbox}     ${message_to_add}

Click on Show Message
    Wait and Click on Element       ${show_message_button}


Verify Show Meesage
    [Arguments]     ${expected_data}
    Wait until element is visible   ${display_message}
    ${message}=  get text    ${display_message}
    should be equal   '${message}'   '${expected_data}'