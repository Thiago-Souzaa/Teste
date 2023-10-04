*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    https://telemedicina.einstein.br/login
${HOME_DESLOGADA}         //input[contains(@name,'email')]
${CAMPO_LOGIN}            //input[contains(@name,'email')]
${LOGIN}                  506732238117
${LOGIN_INVALIDO}         123456788888
${CAMPO_SENHA}            //input[contains(@name,'password')]
${SENHA}                  Hiae@321
${SENHA_INVALIDA}         AAAAAAAA


*** Keywords ***
Abrir o navegador
    Open Browser                        browser=chrome
    Maximize Browser Window

#CASO DE TESTE 01
Dado que estou deslogado no site do Einstein conecta
    Go To                               url=${URL}
    Wait Until Element Is Visible       locator=${HOME_DESLOGADA}

Quando preencho os campos de login e senha e clico em entrar
    Input Text    locator=${CAMPO_LOGIN}    text=${LOGIN}
    Input Password    locator=${CAMPO_SENHA}    password=${SENHA}
    Click Button    locator=//button[@type='submit'][contains(.,'Entrar')]

Então vejo a tela da home logada
    Wait Until Element Is Visible    locator=//div[@class='sc-jCIpDk bqEGpL'][contains(.,'Continuar')]    timeout=20




Quando preencho os campos de login com um email inválido e senha e clico em entrar
    Input Text                 locator=${CAMPO_LOGIN}    text=${LOGIN_INVALIDO}
    Input Password             locator=${CAMPO_SENHA}    password=${SENHA}
    Click Button               locator=//button[@type='submit'][contains(.,'Entrar')]

Então vejo uma mensagem de erro
    Wait Until Element Is Visible    locator=//p[@type='info'][contains(.,'Usuário ou senha incorretos.')]


Quando preencho os campos de login e senha inválida e clico em entrar
    Input Text    locator=${CAMPO_LOGIN}    text=${LOGIN}
    Input Password    locator=${CAMPO_SENHA}    password=${SENHA_INVALIDA}
    Click Button    locator=//button[@type='submit'][contains(.,'Entrar')]



Fechar o navegador
    Capture Page Screenshot
    Close Browser

