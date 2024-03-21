*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

Resource  ../Resources/resource.robot
Resource  ../login_tests/gherkin_login.robot


*** Test Cases ***
Guru99 Valid Login
    [Tags]    Guru99-0
    Given browser is opened to login page
    When Click on the RPA sub header
    Then RPA header is reflected page should be open
    And SAP header reflected
    Then Wait until the Udemy pop-up and close
    Then Capture all header and print

Guru99 Open new tab and close previous
    [Tags]    Guru99-1
    Given browser is opened to login page



