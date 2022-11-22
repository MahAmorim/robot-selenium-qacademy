*** Settings ***
Resource    base.robot

Test Setup       Nova sessão
Test Teardown    Encerrar sessão

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_phanter}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_thor}
    Checkbox Should Be Selected    ${check_thor}
    Sleep                          5

Marcando opção com CSS Slector
    [Tags]    ironman
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_iron}
    Checkbox Should Be Selected    ${check_iron}
    Sleep                          5

Marcando opção com Xpath
    [Tags]    blackpanther
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_phanter}
    Checkbox Should Be Selected    ${check_phanter}
    Sleep                          5

#robot -d ./log tests/checkbox.robot -> para rodar
#robot -d ./log -i ironman tests/checkbox.robot -> para rodar
#robot -d ./log -i blackpanther tests/checkbox.robot -> para rodar