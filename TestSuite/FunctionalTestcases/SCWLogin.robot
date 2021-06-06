*** Settings ***
Documentation     Basic launching URL
Library           SeleniumLibrary
Resource          ../../Resources/ReusabilityFunctions.robot

*** Variables ***
${url}            http://bktsfrdweb02.signanthealth.com/SignIn/
${browser}        chrome
${username}       xpath=//*[@id="UserName"]
${password}       xpath=//*[@id="Password"]
${button}         xpath=//*[@id="bSignIn"]
${text}           xpath=//*[@id="webpage_content_main"]/h3[1]

*** Test Cases ***
Simple Login page SCW
    Launch Browser
    Verify Login page
    Enter Login credentials
    Click SubmitButton
    Verify Welcome Text

Logout
    Logoff
    Closing Browser
