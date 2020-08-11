#### CADASTRO FELIZ ###
Quando("faço o cadastro do meu usuário:") do |table|
    @dashboard.quero_acessar_cadastro

    carina = table.rows_hash
    @conta.cadastro_feliz(carina)
end
  
Então("deve ser exibido a mensagem {string}") do |sucesso|
    expect(@telefone.msg_sucesso.text).to eql sucesso
end

### CADASTRO INVALIDO ###
Quando("realizo o cadastro com {string}, {string}, {string}, {string}, {string} e {string}") do |nome, email, senha, cpf, celular, idade|
    @dashboard.quero_acessar_cadastro
    @conta.cadastro_infeliz(nome, email, senha, cpf, celular, idade)
end
  
Então("deve ser exibido a seguinte mensagem {string}") do |msg_excecao|
    expect(@conta.msg_erro.text).to eql msg_excecao
end