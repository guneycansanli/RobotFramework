*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    ${cols}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th

     log to console    ${rows}
     log to console    ${cols}

     ${data}=    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
     log to console    ${data}

     table column should contain    xpath://*[@id="HTML1"]/div[1]/table    2    Author    # table xpath / column number / expected value
     table row should contain    xpath://*[@id="HTML1"]/div[1]/table    4    Learn JS    # table xpath / row number / expected value
     table cell should contain    xpath://*[@id="HTML1"]/div[1]/table    5    2    Mukesh    # table xpath / row no / col. no / expected value
     table header should contain    xpath://*[@id="HTML1"]/div[1]/table    BookName

     close browser

*** Keywords ***
