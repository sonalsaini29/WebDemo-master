*** Settings ***
Documentation     A test suite with a GET request in Robot framework.
...               This test is functionally identical to the example in
Resource          Resources/resource.robot
Library     request
Library     Requestslibrary
Library     Collections

*** Variables  ***
${base_url}     http://restapi.demoqa.com/customer

*** Test Cases ***
Get Details
    create session  mysession   ${base_url}
    ${body}=    create dictionary   FirstName=Sonal  LastName=Saini
    ${header}=      create disctionary  Content-Type=application/json
    ${response}=     post request  mysession /register   data=${body}    header=${header}
    log to console  ${response.Content}
    log to console  ${response.header}
    log to console  ${response.status_code}
