***Settings***

Documentation  Realizar os cenario de login
Resource        resources/resources.robot
Test Setup      Dado que abri o emulador navegando ate a parte do login



***Test Cases*** 
Caso de teste 01- Login com CPF correto e senha correta
   [Tags]      login        regressivo
    Quando preencher o campo documento usando CPF correto
    E colocar a senha correta
    Entao usuario entrara na home

Caso de teste 02- Login com Passaporte correto e senha correta
   [Tags]      login        regressivo
    Quando preencher o campo documento usando Passaporte correto
    E colocar a senha correta
    Entao usuario entrara na home

Caso de Teste 03- Login com CPF correto e senha incorreta
   [Tags]      login
    Quando preencher o campo documento usando CPF correto
    E colocar a senha incorreta
    Entao devera informar que o documento ou a senha esta incorreto

Caso de Teste 04- Login com Passaporte correto e senha incorreto
   [Tags]      login
    Quando preencher o campo documento usando Passaporte correto
    E colocar no campo senha a senha incorreta
    Entao devera informar que o documento ou a senha esta incorreto

Caso de Teste 05- Login com CPF incorreto e senha correta
   [Tags]      login
    Quando preencher o campo documento usando CPF incorreto
    E colocar a senha correta
    Entao devera informar que o documento ou a senha esta incorreto

Caso de Teste 06- Login com Passaporte incorreto e senha correta
   [Tags]      login
    Quando preencher o campo documento usando Passaporte incorreto
    E colocar a senha correta
    Entao devera informar que o documento ou a senha esta incorreto

Caso de Teste 07- Login com CPF incorreto e senha incorreta
   [Tags]      login
    Quando preencher o campo documento usando CPF incorreto
    E colocar no campo senha a senha incorreta
    Entao devera informar que o documento ou a senha esta incorreto

Caso de Teste 08- Login com Passaporte incorreto e senha incorreta
   [Tags]      login
    Quando preencher o campo documento usando Passaporte incorreto
    E colocar no campo senha a senha incorreta
    Entao devera informar que o documento ou a senha esta incorreto

Caso de Teste 09- Usuario com CPF esqueceu a senha 
    [Tags]      esqueceu_senha      regressivo
    Quando clicar em esqueci minha senha
    E colocar CPF como documento vinculado
    Entao ira para tela de verifique seu email
    E voltar para o inicio

Caso de Teste 10- Usuario com Passaporte esqueceu a senha 
   [Tags]      esqueceu_senha       regressivo
    Quando clicar em esqueci minha senha
    E colocar Passaporte como documento vinculado
    Entao ira para tela de verifique seu email
    E voltar para o inicio

Caso de Teste 11- Usuario com Email esqueceu a senha 
    [Tags]      esqueceu_senha
    Quando clicar em esqueci minha senha
    E colocar email como documento vinculado
    Entao ira para tela de verifique seu email
    E voltar para o inicio

Caso de Teste 12- Usuario escolhe preencher formulario como forma de contato ao suporte, preenchendo todos os campos
   [Tags]      contato_suporte
    E clica no no botao que esta debaixo do campo senha 
    Quando escolher o Formulario de contato como forma de contato ao suporte
    E preencher o formulario de forma correta
    Entao informara que mensagem foi enviada com sucesso

Caso de Teste 13- Usuario escolhe WhatsApp como forma de contato ao suporte
   [Tags]      contato_suporte
    E clica no no botao que esta debaixo do campo senha
    Quando escolher o WhatsApp como forma de contato ao suporte
    E Clica em continue to chat
    Entao usuario entrara no chat do suporte

Caso de Teste 14- Usuario escolhe telefone como forma de contato ao suporte
   [Tags]      contato_suporte      regressivo
    E clica no no botao que esta debaixo do campo senha 
    Quando escolher o telefone como forma de contato ao suporte
    Entao ira para o teclado do telefone ja com o numero para ligar






    










