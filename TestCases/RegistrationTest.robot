*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/


*** Test Cases ***
Registration Test
    Open my Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    David
    Enter LastName    John
    Enter Phone    1223445566
    Enter Email    david@gmail.com
    Enter Address1    Toronto
    Enter City    Toronto
    Enter State    Brampton
    Enter Postal Code    123
    Select Country    CANADA
    Enter User Name    test
    Enter Password    test
    enter confirmed password    test
    Click Submit
    Verify Succesful Registration
    close all browsers