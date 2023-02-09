#language: pt

@login
Funcionalidade: Login
    Como cliente apaixonado por roupas
    Gostaria de realizar login na loja virtual Swag Labs
    Para comprar as últimas tendências de moda do mercado

    @test
    Cenário: Login com sucesso
        Dado que o cliente acessa a página de login da loja Swag Labs
        Quando insere usuário e senha
            E clica no botão de login
        Então é direcionado para o catálogo de produtos

    Cenário: Tentativa de login sem usuário
        Dado que o cliente acessa a página de login da loja Swag Labs
        Quando insere a senha e não insere o usuário
            E clica no botão de login
        Então a página retorna a mensagem 'Epic sadface: Username is required'

    Cenário: Tentativa de login sem senha
        Dado que o cliente acessa a página de login da loja Swag Labs
        Quando insere o usuário e não insere a senha
            E clica no botão de login
        Então a página retorna a mensagem 'Epic sadface: Password is required'

    Cenário: Tentativa de login sem dados de acesso
        Dado que o cliente acessa a página de login da loja Swag Labs
        Quando não insere usuário e senha
            E clica no botão de login
        Então a página retorna a mensagem 'Epic sadface: Username is required'

    Cenário: Tentativa de login com usuário inválido
        Dado que o cliente acessa a página de login da loja Swag Labs
        Quando insere usuário inválido
            E clica no botão de login
        Então a página retorna a mensagem 'Epic sadface: Username and password do not match any user in this service'

    Cenário: Tentativa de login com senha inválida
        Dado que o cliente acessa a página de login da loja Swag Labs
        Quando insere senha inválida
            E clica no botão de login
        Então a página retorna a mensagem 'Epic sadface: Username and password do not match any user in this service'