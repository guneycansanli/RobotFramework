*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Handling DropDowns and Lists
    open browser    ${url}    ${browser}
    maximize browser window

    select from list by label    continents    Asia
    sleep    3
    select from list by index    continents    5
    #select from list by value    continents {value} // no value tag in html

    #List Box
    select from list by label    selenium_commands    Wait Commands
    select from list by label    selenium_commands    WebElement Commands
    sleep    3
    unselect from list by label    selenium_commands    Wait Commands

*** Keywords ***




