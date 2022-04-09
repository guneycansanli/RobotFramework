*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://google.com/

*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    searchToGoogle
    close browser

*** Keywords ***
searchToGoogle
    input text    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    github
    click element    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    click element    xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3
    #input text id:
    #click link xpath: