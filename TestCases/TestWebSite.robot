*** Settings ***
#Resource    D:\\Automation\\ui-automation-robot\\Utilities\\loder.robot
Resource    ../Utilities/loder.robot
Resource    ../Keywords/test_website_keyword.robot
Resource    ../Keywords/simple_form_demo_keyword.robot
Variables    ../Variables/simple_form_demo_variables.py

*** Test Cases ***
Test Case 01: Test Sample Website
    Open Test Website
    Go to Simple Form Demo
    Enter Your Message  ${test_message}
    Click on Show Message
    Verify Show Meesage     ${test_message}

