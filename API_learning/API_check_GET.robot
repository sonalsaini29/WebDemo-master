*** Settings ***
Documentation     A test suite with a GET request in Robot framework.
...               This test is functionally identical to the example
Library     Requestslibrary
Library     Collections

*** Variables  ***
${base_url}     http://restapi.demoqa.com/customer

*** Test Cases ***
Get Details
    create session  mysession   ${base_url}
    ${body}=    create dictionary   FirstName=Sonal  LastName=Saini
    ${header}=      create dictionary  Content-Type=application/json
    ${response}=     post request  mysession /register   json=${body}    headers=${header}
    log to console  ${response.content}
    log to console  ${response.headers}
    log to console  ${response.status_code}

*** Keywords ***

