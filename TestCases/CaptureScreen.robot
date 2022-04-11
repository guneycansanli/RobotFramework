*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    input text    id:txtUsername    admin
    input text    id:txtPassword    admin123

    #capture element screenshot    xpath://*[@id="divLogo"]/img    C:/Users/EGNUASN/PycharmProjects/RobotFramework/Logo.png
    #capture page screenshot    C:/Users/EGNUASN/PycharmProjects/RobotFramework/LoginTC.png

    capture element screenshot    xpath://*[@id="divLogo"]/img    Logo.png
    capture page screenshot    LoginTC.png

    close browser

