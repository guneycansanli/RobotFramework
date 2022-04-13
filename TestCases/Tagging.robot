*** Settings ***



*** Test Cases ***
TC1 User RegistrationTest
    [Tags]    regression     #Tag
    log to console    This is user reg test
    log to console    user registration test is over
TC2 LoginTest
    [Tags]    sanity
    log to console    This is Login test
    log to console    Login test is over
TC3 Change user settings
    [Tags]    regression
    log to console    This is changing user settings test
    log to console    Changing user test is over
TC4 Logout test
    [Tags]    sanity
    log to console    This is logout test
    log to console    Logout test is over

#robot --include=sanity  TestCases\Tagging.robot
#robot --include=regression  TestCases\Tagging.robot

#robot -i sanity -i regression  TestCases\Tagging.robot -->   include

# robot -e regression  TestCases\Tagging.robot  -->    exclude

#robot -e sanity -i regression  TestCases\Tagging.robot