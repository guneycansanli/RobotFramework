*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/
${BROWSER}    chrome

*** Keywords ***
Open my browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Close browsers
    close all browsers
Open login page
    go to    ${LOGIN URL}
Input user name
    [Arguments]    ${username}
    input text    id:Email    ${username}
Input password
    [Arguments]    ${password}
    input text    id:Password    ${password}
Click login button
    click element    xpath:/html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/button
Click logout link
    click link    Logout
Error message should be visible
    page should contain    Login was unsuccessful
Dasboard page should be visible
    page should contain    Dashboard