*** Settings ***
Library  DateTime
Library  SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
     ${currentdate}     Get Current Date
     Log To Console    ${currentdate}

TC2
     Append To Environment Variable    Path      C:\\chromedriver\\chromedriver_win32
     Open Browser    url=http://demo.openemr.io/b/openemr/    browser=gc
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice    English (Indian)
     Click Element    xpath=//button[@type='submit']
     ${actualtitle}      Get Title
     Log     ${actualtitle}
     Log To Console    ${actualtitle}




