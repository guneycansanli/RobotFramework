*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}    chrome
    maximize browser window
    set selenium speed    2seconds

    #Selecting Radio Buttons name/value
    select radio button    sex    Female
    select radio button    exp    5

    #Selecting Check Box
    select checkbox    Manual Tester
    select checkbox    Automation Tester
    unselect checkbox    Manual Tester
    close browser

*** Variables ***

