*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    sleep    2
    Verify Succesfull Login
    Close my Browsers