*** Settings ***
Library    Process
Library    ./PlatformInstaller.py

*** Test Cases ***
Run Platform Script
    [Documentation]    Running the operating system related setup file "requirement.txt"
    [Tags]    OS-Check
    ${output}=    Platform Check
    Log To Console    The Platform is checked and according the requirements are installed in the system
