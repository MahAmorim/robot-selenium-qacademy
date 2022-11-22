*** Settings ***
Library    app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=    Welcome    Marcela       
    Should Be Equal    ${result}    Olá Marcela, bem vindo ao Curso básico de Robot Framework!
    Log To Console    ${result}

#robot test.robot -> para rodar 