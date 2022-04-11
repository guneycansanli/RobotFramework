*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTests
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    maximize browser window

    #execute javascript    window.scrollTo(0,2500)    #window.scrollTo(horizontal, vertical) pixels
    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[51]/td[2]

    execute javascript    window.scrollTo(0,document.body.scrollHeight)    # end of page

    sleep    2

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    #go to starting point top

    close browser