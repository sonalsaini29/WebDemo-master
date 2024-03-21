*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resource.robot

*** Test Cases ***
User navigate to the Login page and validate the menu options
    [Documentation]    User is getting the title header
    [Tags]    FFID-1
    Given Open Browser To Login Page
    When Login Page Should Be Open
    And Close the pop-up screen
    Then Get the menu options from the home page
    
*** Keywords ***
Get the menu options from the home page
    Wait Until Element Is Visible    
    
