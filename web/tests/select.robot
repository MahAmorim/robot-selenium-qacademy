*** Settings ***
Resource    base.robot

Test Setup       Nova sessão
Test Teardown    Encerrar sessão

*** Test Cases ***
Selecionar por texto
    Go To                             ${url}/dropdown
    Select From List By Label         class:avenger-list                Scott Lang
    Get Selected List Value           class:avenger-list
    Sleep                             5    

Selecionar pelo valor
    Go To                             ${url}/dropdown
    Select From List By Value         id:dropdown                       6
    Radio Button Should Be Set To     movies                            guardians
    Sleep                             5    

Selecionar por texto e validar pelo valor
    Go To                             ${url}/dropdown
    Select From List By Label         class:avenger-list                Scott Lang
    ${selected}=                      Get Selected List Value           class:avenger-list
    Should Be Equal                   ${selected}                       7                      
    Sleep                             5    

Selecionar pelo valor e validar por texto
    Go To                             ${url}/dropdown
    Select From List By Value         id:dropdown                       6
    ${selected}=                      Get Selected List Label           id:dropdown
    Should Be Equal                   ${selected}                       Loki     
    Sleep                             5    

#robot -d ./log tests/select.robot -> para rodar