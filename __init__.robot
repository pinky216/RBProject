*** Settings ***
Library           SeleniumLibrary
Library           openpyxl

*** Variables ***
${URL}            http://bktsfrdweb02.signanthealth.com/SignIn/

*** Keywords ***
SetupDemo
    Log To Console    This is a set up Method

TearDownDemo
    Log To Console    This is a Tear Down Method
