require "base64"

Before do
  page.current_window.resize_to(1440, 900)
  
  @login = LoginPage.new
  @dashboard = DashboardPage.new
  @conta = ContaPage.new
  @telefone = ConfirmeTelefonePage.new
end

Before("@ze_cadastro") do
    visit "https://ze.delivery/"
end

After do
  imagem_arquivo = page.save_screenshot("logs/imagens/evidencia.png")
  imagem_base64 = Base64.encode64(File.open(imagem_arquivo, "rb").read)
 
end