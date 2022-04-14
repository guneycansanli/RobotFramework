*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]    ${siteUrl}    ${Browser}
    open browser    ${siteUrl}    ${Browser}
    maximize browser window
Enter UserName
    [Arguments]    ${userName}
    input text    ${txt_loginUserName}    ${userName}
Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}    ${password}
Click SignIn
    click button    ${btn_signIn}
Verify Succesfull Login
    title should be    Login: Mercury Tours
Close my Browsers
    close all browsers