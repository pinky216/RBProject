*** Settings ***
Library           SeleniumLibrary
Library           openpyxl

*** Variables ***
${var1}           4
${var2}           4
@{USER}           Pinky    Kumari

*** Test Cases ***
Tescase_01t
    [Documentation]    This is my first test case and it is used for comparing \ values
    ...    *Test Case*
    ...    _This will be Italic_
    [Setup]    Log To Console    This is a setup method    # This is the setup method
    Should Be Equal    ${var1}    ${var2}
    Should Be Equal    5    5
    Should be True    6    6
    [Teardown]    Log To Console    This is the teardown method    # This is a tear down method

TestCase_02
    [Documentation]    This is my first *learning* Documentation . This is just a _Sample_
    [Setup]    SetupDemo
    Should Be Equal As Strings    ${USER}[0]    ${USER}[0]
    [Teardown]    TearDownDemo

TC04
    [Template]    Should be True
    [Timeout]    10 minutes 20 seconds
    4    4
    6    6
    8    8

TC05
    Open Browser    http://bktsfrdweb02.signanthealth.com/SignIn/    Chrome
    Maximize Browser Window
    Input Text    xpath=//*[@id="UserName"]    UserTestAutomation
    Input Password    xpath=//*[@id="Password"]    Password1
    Click Button    id:bSignIn
    Click Link    //*[@id="webpage_content_main"]/div[3]/div[1]/div/div[2]/ul/li[2]/a
    Close Browser

*** Keywords ***
SetupDemo
    Log To Console    This is a Set up Method

TearDownDemo
    Log To Console    This is a Tear Down Method
