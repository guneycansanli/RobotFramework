*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome


*** Test Cases ***
TC1
    ${PageTitle}=    launchBrowser    ${url}    ${browser}
    log to console    ${PageTitle}
    log    ${PageTitle}
    input text    name:userName    mercury
    input text    name:password    mercury
    close browser
