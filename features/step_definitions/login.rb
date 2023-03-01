Dado('que o cliente acessa a página de login da loja Swag Labs') do
    @login.load
end
  
Quando('inserir usuário e senha') do
    @login.username("user")
    @login.password("pwd")
end
  
Quando('clicar no botão de login') do
    @login.login
end
  
Então('é direcionado para o catálogo de produtos') do
    expect(@login.header_validation).to be true
end

Quando('inserir os dados de login') do |table|
    login_params = table.rows_hash
    @login.username(login_params[:username])
    @login.password(login_params[:password])
end
  
Então('a página retorna a mensagem {string}') do |message|
    expect(@login.error_message).to eql (message)
end