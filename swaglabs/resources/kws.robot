***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação dos comportamentos

***Keywords***
Dado que acesso a página inicial
    Go To       http://saucedemo.com

Quando submeto o login "${login}" e a senha "${senha}"
    Input Text                id:user-name          ${login}
    Input Text                id:password           ${senha}
    Click Element             id:login-button       

Quando não submeto o login e a senha
    Click Element             id:login-button

Então sou autenticado com sucesso
    Wait Until Page Contains Element           class:peek 

Então devo ver a mensagem "${mensagem}"
    Wait Until Page Contains                   ${mensagem}   

# Hooks
Open Session
    Open Browser          about:blank       chrome

Close Session
    Capture Page Screenshot
    Close Browser