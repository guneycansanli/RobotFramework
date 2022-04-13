*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx  sheet_name=Sheet1    #for excel and csv file

Suite Setup    Open my browser
Suite Teardown    Close browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestwithExcel using ${username} and ${password}


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input user name    ${username}
    Input password    ${password}
    Click login button
    Error message should be visible