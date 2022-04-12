*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open my browser    #before test cases
Suite Teardown    Close browsers    #after test cases
Test Template    Invalid login

*** Test Cases ***      username                 password
Right user empty pass    admin@yourstore.com    ${EMPTY}
Right user wrong pass    admin@yourstore.com    xyz
Right user right pass    admin@yourstore.com    admin
Right user empty pass    admin@yourstore.com    ${EMPTY}
Right user wrong pass    admin@yourstore.com    xyz


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input user name    ${username}
    input password    ${password}
    Click login button
    Error message should be visible