class DashboardPage < SitePrism::Page

    element :btn_idade_sim, '#age-gate-button-yes'
    element :btn_idade_nao, '#age-gate-button-no'
    element :btn_entrar, '#welcome-button-sign-in'
    element :btn_criar_conta, '#login-home-link-dont-have-account'
    element :btn_quero_continuar_email, '#signup-home-button-email'
    element :btn_acessar_com_email, '#login-home-email-button-sign-in'
    element :ola_usuario, '#header-user-badge .css-7kgpm6-textBase-UserProfileCard'
    element :msg_sucesso, '#global-message-Sucesso'


    def quero_acessar_cadastro
        btn_idade_sim.click
        btn_entrar.click
        btn_criar_conta.click
        btn_quero_continuar_email.click
    end

    def quero_acessar_login_email
        btn_idade_sim.click
        btn_entrar.click
        btn_acessar_com_email.click
    end

end