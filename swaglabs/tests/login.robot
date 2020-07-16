***Settings***
Documentation         Suite dos testes de login

Library               SeleniumLibrary
Resource              ../resources/kws.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Login com sucesso
    Dado que acesso a página inicial
    Quando submeto o login "standard_user" e a senha "secret_sauce"
    Então sou autenticado com sucesso

Login incorreto
    Dado que acesso a página inicial
    Quando submeto o login "teste" e a senha "teste"
    Então devo ver a mensagem "Epic sadface: Username and password do not match any user in this service"

Login sem dados informados
    Dado que acesso a página inicial
    Quando não submeto o login e a senha
    Então devo ver a mensagem "Epic sadface: Username is required"