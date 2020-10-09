*** Settings ***
Resource    ../Utilities/loder.robot

*** Keywords ***
info
   [Arguments]   ${message}
   log      ${\n}Info Log-->: ${message} :${\n}
   log to console      ${\n}Info Log-->: ${message} :${\n}


debug
         [Arguments]  ${message}
         log      ${\n}Debug Log-->:${message}:${\n}        DEBUG
         log to console      ${\n}Debug Log-->:${message}:${\n}

steplog
        [Arguments]  ${message}
        log to console  ${\n}==================== ${message} ======================${\n}


Take Screenshot
    capture page screenshot