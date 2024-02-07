*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          Resources/resource.robot

*** Test Cases ***
Valid Login
   [Tags]    AGIS-XX
   Given browser is opened to login page
   When user "demo" logs in with password "mode"
   Then welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials
