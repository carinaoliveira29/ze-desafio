#   Desafio Automação API

## Linguagem de programção e framework's utilizados

- *Ruby* 
- *Cucumber*
- *HTTParty*
- *RSpec*

## Estrutura do projeto

-- Cenário em Gherkin ``features/specs/weather.feature``
-- Classe de teste ``features/step_definitions/weather_steps.rb``
-- Classe de suporte ``features/support/env.rb``

## Executando o projeto

1. Execute o seguinte comando para instalar as dependências do projeto:

``bundle install``

2. Com as gem's do projeto instaladas, rode o seguinte comando para executar os cenários de teste:

``cucumber features/specs/weather.feature``
