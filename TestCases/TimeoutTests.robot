*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register    chrome
    maximize browser window
    wait until page contains    Register
    ${time}=    get selenium timeout
    log to console    ${time}      #5 seconds
    set selenium timeout    10 seconds
   # wait until page contains    Registration    # 5 secs (default Time out)

    select radio button    Gender    M
    input text    name:FirstName    Guney
    input text    name:LastName    sanli
    input text    name:Email    guney@gmail.com
    input text    name:Password    guneyguney
    input text    name:ConfirmPassword    guneyguney
    close browser

*** Keywords ***