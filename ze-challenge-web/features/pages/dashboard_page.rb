class DashboardPage < SitePrism::Page

    element :btn_idade_sim, '#age-gate-button-yes'
    element :btn_idade_nao, '#age-gate-button-no'
    element :btn_cookie, 'button[title="Aceitar cookies"]'
    element :btn_entrar, '#welcome-button-sign-in'
    element :btn_criar_conta, '#create-account-link'
    element :btn_quero_continuar_email, '#signup-home-button-email'
    element :ola_usuario, '#header-user-badge .css-7kgpm6-textBase-UserProfileCard'
    element :msg_sucesso, '#global-message-Sucesso'


    def quero_acessar_cadastro
        btn_idade_sim.click
        
        if page.has_css?('button[title="Aceitar cookies"]')
            btn_cookie.click
            btn_entrar.click
            btn_criar_conta.click
        elsif page.has_no_css?('button[title="Aceitar cookies"]')
            btn_entrar.click
            btn_criar_conta.click
        end
    
    end

    def quero_acessar_login_email
        btn_idade_sim.click
        
        if page.has_css?('button[title="Aceitar cookies"]')
            btn_cookie.click
            btn_entrar.click 
        elsif page.has_no_css?('button[title="Aceitar cookies"]')
            btn_entrar.click
        end

    end

end