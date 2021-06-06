*** Settings ***
Documentation     Suite
Library           SeleniumLibrary

*** Variables ***
${URL}            http://bktsfrdweb02.signanthealth.com/SignIn/
${BROWSER}        Chrome

*** Keywords ***
Launch Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    #search topic    [Arguments]    ${topic}
    #    Input Text    name=q    ${topic}    true

Closing Browser
    Close Browser

[Documentation] Login keywords

Verify Login page
    Get text    xpath://*[@id="webpage_content_main"]/h3[1]

Enter Login credentials
    Input Text    xpath://*[@id="UserName"]    UserTestAutomation    [return]
    Input Password    xpath://*[@id="Password"]    Password1    [return]

Click SubmitButton
    Click Button    id:bSignIn

Verify Welcome Text
    Get text    xpath://*[@id="webpage_login_display"]/p

Logoff
    Click Link    class:logoff
