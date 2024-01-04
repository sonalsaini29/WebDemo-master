*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.

Resource  login_tests/resource.robot
Resource  login_tests/gherkin_login.robot


*** Test Cases ***
Guru99 Valid Login
    [Tags]    AGIS-XXX
    Given browser is opened to login page
    When Click on the RPA sub header
    Then RPA header is reflected page should be open

