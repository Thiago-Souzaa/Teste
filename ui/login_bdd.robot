*** Settings ***

Documentation    Esta suite testa o login do Einstein Conecta
Resource         resources/Conecta_resources.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador


*** Test Cases ***

Caso de teste 01 - Login_sucesso

    [Documentation]  Este teste verifica o login com sucesso
    [Tags]           login_sucesso

    Dado que estou deslogado no site do Einstein conecta
    Quando preencho os campos de login e senha e clico em entrar
    Então vejo a tela da home logada
   

Caso de teste 02 - Login_email_invalido

    [Documentation]  Este teste verifica CPF inválido
    [Tags]           login_email_invalido

    Dado que estou deslogado no site do Einstein conecta
    Quando preencho os campos de login com um email inválido e senha e clico em entrar
    Então vejo uma mensagem de erro
    
Caso de teste 03 - Login_senha_invalida

    [Documentation]  Este teste verifica uma senha inválida
    [Tags]           login_senha_invalida

    Dado que estou deslogado no site do Einstein conecta
    Quando preencho os campos de login e senha inválida e clico em entrar
    Então vejo uma mensagem de erro