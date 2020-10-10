*** Settings ***
Documentation    Suite description

Library         SeleniumLibrary
Library         String
Library         DateTime
Library         OperatingSystem
Library         Collections


Variables           ../Config/common/config_prop.py


Resource            logger.robot
Resource            ../Keywords/browser_keyword.robot
Resource            ../Keywords/common_keywords.robot