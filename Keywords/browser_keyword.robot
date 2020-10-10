*** Keywords ***
Set system
        ${os}=    Evaluate    platform.system()    platform
        set global variable        ${system}     ${os}
        info   ${system} is the current OperatingSystem

Open Test Website
    run keyword if    '${browser}' == 'Chrome'      Get Chrome
    run keyword if    '${browser}' == 'Firefox'     Get Firefox
    run keyword if    '${browser}' == 'headlessChrome'   Get headlessChrome
    run keyword if    '${browser}' == 'headlessFirefox'   Get headlessFirefox
    Go to  ${url}

Get Firefox
     Set system
     ${options}=     Evaluate     sys.modules['selenium.webdriver'].firefox.webdriver.Options()     sys, selenium.webdriver
     Call Method    ${options}    add_argument    start-maximized
     run keyword if   '${system}'=='Linux'      Create Webdriver    ${browser}    firefox_options=${options}
     run keyword if   '${system}'=='Windows'     Create Webdriver    ${browser}    firefox_options=${options}

Get headlessFirefox
     Set system
     ${options}=     Evaluate     sys.modules['selenium.webdriver'].firefox.webdriver.Options()     sys, selenium.webdriver
     Call Method    ${options}    add_argument    start-maximized
     Call Method    ${options}    add_argument    --headless
     run keyword if   '${system}'=='Linux'      Create Webdriver    Firefox    firefox_options=${options}
     run keyword if   '${system}'=='Windows'     Create Webdriver    Firefox    firefox_options=${options}

Get headlessChrome
        Set system
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
        Call Method    ${chrome options}    add_argument    start-maximized
        Call Method    ${chrome options}    add_argument    incognito
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    ignore-certificate-errors
        Call Method    ${chrome options}    add_argument    delete-all-cookies
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create Webdriver    Chrome     chrome_options=${chrome options}
        ${S2L}           get library instance    SeleniumLibrary
        #${webdriver}    Call Method             ${S2L}    _current_browser


Get Chrome
    Set system
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_argument    start-maximized
    Call Method    ${chrome options}    add_argument    incognito
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    ignore-certificate-errors
    Call Method    ${chrome options}    add_argument    delete-all-cookies
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create Webdriver    ${browser}     chrome_options=${chrome options}

