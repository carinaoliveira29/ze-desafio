#language: pt

@ze_cadastro
Funcionalidade: Cadastro de usuário
    Para que eu possa comprar minhas bebidas preferidas
    Devo realizar o meu cadastro 
    Para poder comprar as minhas bebidas p/ comemorar no happy hour com as minhas best's

    @cadastro_feliz
    Cenario: Cadastro de usuário com e-mail
       
    Quando faço o cadastro do meu usuário:
      | nome    | Carina Oliveira           |
      | email   | carina.oliveira@testf.com |
      | senha   | @carina123                |
      | cpf     | 90865145024               |
      | celular | 99992268766               |
      | idade   | 18                        |                    
    Então deve ser exibido a mensagem "Sucesso"

    @cadastro_invalido
    Esquema do Cenario: Cadastro inválido

    Quando realizo o cadastro com "<nome>", "<email>", "<senha>", "<cpf>", "<celular>" e "<idade>"
    Então deve ser exibido a seguinte mensagem "<mensagem>"

    Exemplos: 
      | nome            | email            | senha           | cpf         | celular     | idade | mensagem                              |
      | Carina          | carina@teste.com | @carina123      | 90865145024 | 61991668762 | 18    | Parece que você esqueceu do sobrenome |
      |                 | carina@teste.com | @carina123      | 90865145024 | 61991668762 | 18    | Nome não pode ficar vazio             |
      | Carina Oliveira | email.com        | @carina123      | 90865145024 | 61991668762 | 18    | Eita, esse e-mail não parece correto  |
      | Carina Oliveira |                  | @carina123      | 90865145024 | 61991668762 | 18    | O campo e-mail não pode ficar vazio   |
      | Carina Oliveira | carina@teste.com | 123             | 90865145024 | 61991668762 | 18    | Sua senha está muito pequena          |
      | Carina Oliveira | carina@teste.com | senhasocomletra | 90865145024 | 61991668762 | 18    | Sua senha parece estar fora do padrão |
      | Carina Oliveira | carina@teste.com | @carina123      | 31232131231 | 61991668762 | 18    | Seu CPF não parece correto            |
      | Carina Oliveira | carina@teste.com | @carina123      |             | 61991668762 | 18    | O campo CPF não pode ficar vazio      |
      | Carina Oliveira | carina@teste.com | @carina123      | 90865145024 | 1199015     | 18    | Seu telefone não parece correto       |
      | Carina Oliveira | carina@teste.com | @carina123      | 90865145024 |             | 18    | O campo Telefone não pode ficar vazio |
      | Carina Oliveira | carina@teste.com | @carina123      | 90865145024 | 61991668762 | 15    | Sua idade deve ser maior que 18 anos  |
      | Carina Oliveira | carina@teste.com | @carina123      | 90865145024 | 61991668762 |       | O campo idade não pode ficar vazio    |