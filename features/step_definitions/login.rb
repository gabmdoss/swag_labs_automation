Dado('que o cliente acessa a página de login da loja Swag Labs') do
    @login.load
end
  
Quando('inserir usuário e senha') do
    @login.username(DATA["username"])
    @login.password(DATA["password"])
end
  
Quando('clicar no botão de login') do
    @login.login
end
  
Então('é direcionado para o catálogo de produtos') do
    @login.header_validation
end