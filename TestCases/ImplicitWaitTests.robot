*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window

    ${implicttime}=    get selenium implicit wait
    log to console    ${implicttime}      #0 seconds

    set selenium implicit wait    10 seconds    #default 0 seconds

    ${implicttime}=    get selenium implicit wait
    log to console    ${implicttime}      #10 seconds

    select radio button    Gender    M
    input text    name:FirstName1    Guney    #there in no FirstName1 in html    // not found
    input text    name:LastName    sanli
    input text    name:Email    guney@gmail.com
    input text    name:Password    guneyguney
    input text    name:ConfirmPassword    guneyguney
    close browser

*** Keywords ***