*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Should Return Page Title
    Open Browser    https://training-wheels-protocol.herokuapp.com/    chrome
    Title Should Be    Training Wheels Protocol
    Close Browser

#robot -d ./log tests/title.robot -> para rodar 