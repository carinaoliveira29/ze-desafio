#   Desafio Automação Web

## Linguagem de programção e framework's utilizados

- *Ruby* 
- *Cucumber*
- *Capybara*
- *Chromedriver*

## Estrutura do projeto

- Cenário em Gherkin ``features/specs/``
- Page Objects (elementos e acões das páginas) ``features/pages/``
- Classe de teste ``features/step_definitions/``
- Classe de suporte ``features/support/env.rb & features/support/hooks.rb`` 

## Executando o projeto

1. Execute o seguinte comando para instalar as dependências do projeto:

``bundle install``

2. Com as gem's do projeto instaladas, rode o seguinte comando para executar os cenários de teste:

``cucumber``

## Observações

O projeto foi realizado no ambiente macOS e utilizado o chromedriver para a realização das ações no browser do chrome. Segue [link](https://www.swtestacademy.com/install-chrome-driver-on-mac/) ensinando como instalar o chromedriver no sistema operacios macOS.
