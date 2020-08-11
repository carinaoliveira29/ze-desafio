class ContaPage < SitePrism::Page

    element :input_nome, '#signup-email-input-name'
    element :input_email, '#signup-email-input-email'
    element :input_senha, '#signup-email-input-password'
    element :input_cpf, '#signup-email-input-document'
    element :input_celular, '#signup-email-input-phone'
    element :input_idade, '#signup-email-input-age'
    element :msg_erro, '.css-b9g1ov-textErrorMessage-Input'
    element :btn_cadastrar, '#signup-email-button-signUp'

    def cadastro_feliz(usuario)
        input_nome.set       usuario[:nome]
        input_email.set      usuario[:email]
        input_senha.set      usuario[:senha]
        input_cpf.set        usuario[:cpf] 
        input_celular.set    usuario[:celular]
        input_idade.set      usuario[:idade]
        btn_cadastrar.click
    end 

    def cadastro_infeliz(nome, email, senha, cpf, celular, idade)
        input_nome.set nome
        input_email.set email
        input_senha.set senha
        input_cpf.set cpf 
        input_celular.set celular
        input_idade.set idade
    end


end