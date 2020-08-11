Quando("eu fazer o meu login com {string} e {string}") do |email, senha|
    @login.load
    @dashboard.quero_acessar_login_email
    @login.fazer_login(email, senha)
end
  
Então("vou receber as boas vindas {string}") do |boasvindas|
    expect(@dashboard.ola_usuario.text).to eql boasvindas
end

Então("vejo a mensagem de sucesso {string}") do |sucesso|
    expect(@dashboard.msg_sucesso.text).to eql sucesso
end

### MENSAGEM DE ERRO DE LOGIN
Então("eu vou levar a mensagem de exceção {string}") do |msg_alerta|
    expect(@login.msg_excecao.text).to eql msg_alerta
end