#language: pt

@login
Funcionalidade: Login
    Como cliente apaixonado por roupas
    Gostaria de realizar login na loja virtual Swag Labs
    Para comprar as últimas tendências de moda do mercado

    Contexto:
        * que o cliente acessa a página de login da loja Swag Labs

    @login_success
    Cenário: Login com sucesso
        Quando inserir usuário e senha
            E clicar no botão de login
        Então é direcionado para o catálogo de produtos

    @login_attempts
    Cenário: Tentativa de login sem usuário
        Quando inserir os dados de login
            | username | <"username"> |
            | password | <"password"> |
            E clica no botão de login
        Então a página retorna a mensagem "<message>"

        Exemplos:
            | username | password | message                                                                   |
            | empty    | pwd      | Epic sadface: Username is required                                        |
            | user     | empty    | Epic sadface: Password is required                                        |
            | empty    | empty    | Epic sadface: Username is required                                        |
            | invalid  | pwd      | Epic sadface: Username and password do not match any user in this service |
            | user     | invalid  | Epic sadface: Username and password do not match any user in this service |
