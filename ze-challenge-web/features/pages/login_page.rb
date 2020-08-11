class LoginPage < SitePrism::Page 
    set_url "/"

    element :input_email, '#login-mail-input-email'
    element :input_senha, '#login-mail-input-password'
    element :btn_logar, '#login-mail-button-sign-in'
    element :msg_excecao, '.css-11ajusi-GlobalMessage'

    def fazer_login(email, senha)
        input_email.set email
        input_senha.set senha
        btn_logar.click
    end

end