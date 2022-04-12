*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser    https://demo.guru99.com/test/newtours/    chrome
    maximize browser window

    ${AllLinksCount}=    get element count    xpath://a
    log to console    ${AllLinksCount}

    @{LinkItems}    create list

    FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
    ${linkText}=    get text    xpath:(//a)[ ${i} ]
    log to console    ${linkText}
    END
    close browser