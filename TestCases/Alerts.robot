*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    xpath://*[@id="HTML9"]/div[1]/button    #open alert(pop-up)

    sleep    3

    #handle alert    accept    #close aler with okey button
    #handle alert    dismiss    #close alet with cancel button
    #handle alert    leave
    alert should be present    Press a button!     #alert include test than press Okey
    #alert should not be present    Press a button! #Test case will fail

    close all browsers

*** Keywords ***

