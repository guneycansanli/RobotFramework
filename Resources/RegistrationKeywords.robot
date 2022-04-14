*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${siteUrl}    ${Browser}
    open browser    ${siteUrl}    ${Browser}
    maximize browser window
Click Register Link
    click link    ${link_Reg}
Enter FirstName
    [Arguments]    ${firstName}
    input text    ${txt_firstname}    ${firstName}
Enter LastName
    [Arguments]    ${lastName}
    input text    ${txt_lastName}    ${lastName}
Enter Phone
    [Arguments]    ${phone}
    input text    ${txt_phone}    ${phone}
Enter Email
    [Arguments]    ${email}
    input text    ${txt_email}    ${email}
Enter Address1
    [Arguments]    ${add1}
    input text    ${txt_add1}    ${add1}
Enter City
    [Arguments]    ${city}
    input text    ${txt_city}    ${city}
Enter State
    [Arguments]    ${state}
    input text    ${txt_state}    ${state}
Enter Postal Code
    [Arguments]    ${postalcode}
    input text    ${txt_postCode}    ${postalcode}
Select Country
    [Arguments]    ${country}
    select from list by label    ${drp_country}    ${country}
Enter User Name
    [Arguments]    ${username}
    input text    ${txt_userName}    ${username}
Enter Password
    [Arguments]    ${password}
    input text    ${txt_Password}    ${password}
Enter Confirmed Password
    [Arguments]    ${confpassword}
    input text    ${txt_conformedPassword}    ${confpassword}
Click Submit
    click button    ${btn_submit}
Verify Succesful Registration
    page should contain    Thank you for registering.
Close my Browsers
    close all browsers