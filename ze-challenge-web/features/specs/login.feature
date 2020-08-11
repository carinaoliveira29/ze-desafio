#language: pt

Funcionalidade: Login
    Para finalizar as minhas compras de biritas
    Devo realizar o login
    Para poder me embebedar com a galera

    @login
    Cenario: Realizar login
    
    Quando eu fazer o meu login com "carinaoliveira.bsb@gmail.com" e "Clara2201"
    Então vou receber as boas vindas "Olá, Carina"
    E vejo a mensagem de sucesso "Sucesso"

    @login_invalido
    Esquema do Cenario: Login inválido

    Quando eu fazer o meu login com "<email>" e "<senha>"
    Então eu vou levar a mensagem de exceção "<mensagem>"

    Exemplos: 
      | email                           | senha     | mensagem               |
      | carinaoliveira.bsb@gmail.com.br | Clara2201 | E-mail não encontrado. |
      | carinaoliveira.bsb@gmail.com    | Clara2301 | Senha inválida         |