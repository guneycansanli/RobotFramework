*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest

    ${spead}=   get selenium speed
    log to console    ${spead}
    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window
    set selenium speed    2 seconds
    #sleep    3
    select radio button    Gender    M
    input text    name:FirstName    Guney
    input text    name:LastName    sanli
    input text    name:Email    guney@gmail.com
    input text    name:Password    guneyguney
    input text    name:ConfirmPassword    guneyguney
    ${spead}=   get selenium speed
    log to console    ${spead}
    close browser

*** Keywords ***



