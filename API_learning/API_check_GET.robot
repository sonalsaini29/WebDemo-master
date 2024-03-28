*** Settings ***
Documentation     A test suite with a GET request in Robot framework.
...               This test is functionally identical to the example in
Library     RequestsLibrary
Library     Collections
Library    ../Python_learning/API_check_GET.py

*** Variables ***
${base_url}     http://restapi.demoqa.com/customer
${goRest_GET_Base_url}    https://gorest.co.in/public/v2
${TOKEN}    e34c88915b3798a2639ec4add7d15379246aa83fdc9a9427407f11cff82ab86a

*** Test Cases ***
Get Details
    create session  mysession   ${base_url}
    ${body}=    create dictionary   FirstName=Sonal  LastName=Saini
    ${header}=      create disctionary  Content-Type=application/json
    ${response}=     post request  mysession /register   data=${body}    header=${header}
    log to console  ${response.Content}
    log to console  ${response.header}
    log to console  ${response.status_code}
    
Get user details from the gotest website
    [Documentation]    Perform a GET request to an API endpoint including a token
    [Tags]        GET_API
    ${headers}=    Create Dictionary    Authorization    Bearer ${TOKEN}    Content-Type    application/json
    ${response}=    GET     ${goRest_GET_Base_url}/users  headers=${headers}
    Should Be Equal As Strings    ${response.status_code}    200    # Ensure the response status code is as expected
    Log    ${response.content}    # Log the response content
        
Get user details from the gotest website using python file
    [Documentation]    Getting users details using REST API og gorest
    [Tags]        GET_API_1
    ${output}=    Get Users List
    Log to console     "\n The list of users are being listed"