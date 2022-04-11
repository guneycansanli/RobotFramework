*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MauseActions
    #right click/open open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu    xpath:/html/body/div/section/div/div/div/p/span
    sleep    3

    #double click action
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    2

    #Drag and Drop
    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    id:box106
    sleep    2
    close browser