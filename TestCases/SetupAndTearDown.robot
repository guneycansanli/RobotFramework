*** Settings ***
Library    SeleniumLibrary

Suite Setup    log to console    Opening Browser    # only 1 time before all tests  cases
Suite Teardown    log to console    Closing Browser    #only 1 time after all test  cases


Test Setup    log to console    Login to application    #before every test cases
Test Teardown    log to console    Logout from application    #after all tast cases

*** Test Cases ***
TC1 Prepaid Recharge
    log to console    This is prepaid recharge testcase
TC2 Postpaid Recharge
    log to console    This is postpaid recharge testcase
TC3 Search
    log to console    This is Search test case
TC4 Advanced Search
    log to console    This Adv Search Test Case