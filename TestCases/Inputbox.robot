*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://automationintesting.com/selenium/testpage/

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    Selenium Test Page | Automation in Testing
    #click link    xpath:/html/body/div[1]/header/div/div[2]/div[2]/div[2]/a
    ${"name_txt"}    set variable    id:firstname

    element should be visible    ${"name_txt"}
    element should be enabled    ${"name_txt"}

    input text    ${"name_txt"}    guneycansanli
    sleep    5
    clear element text    ${"name_txt"}
    sleep    3
    close browser


*** Keywords ***


