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

    case 
    when page.has_css?('#signup-email-input-name-error-message')
        expect(@conta.msg_erro_nome.text).to eql msg_excecao
    when page.has_css?('#signup-email-input-email-error-message')
        expect(@conta.msg_erro_email.text).to eql msg_excecao
    when page.has_css?('#signup-email-input-password-error-message')
        expect(@conta.msg_erro_password.text).to eql msg_excecao
    when page.has_css?('#signup-email-input-document-error-message')
        expect(@conta.msg_erro_cpf.text).to eql msg_excecao
    when page.has_css?('#signup-email-input-phone-error-message')
        expect(@conta.msg_erro_celular.text).to eql msg_excecao
    when page.has_css?('#signup-email-input-age-error-message')
        expect(@conta.msg_erro_idade.text).to eql msg_excecao
    end

end