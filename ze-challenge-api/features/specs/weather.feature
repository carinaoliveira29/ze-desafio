#language: pt

Funcionalidade: Dados metereológicos
    Como um metereologista
    Necessito saber dados metereológicos das cidades do meu país
    Para poder apresentá-los no jornal nacional

    Cenário: Obter dados metereológicos da cidade por id
        Quando solicito o id de uma cidade para o serviço de metereologia
        Então devo obter o código de status referente ao id "200"
            E recebo uma lista com o id da cidade desejada

    Cenário: Obter dados metereológicos da cidade por nome
        Quando solicito o nome de uma cidade para o serviço de metereologia
        Então devo obter o código de status referente ao nome "200"
            E recebo uma lista com o nome da cidade desejada

    Cenário: Obter dados metereológicos da cidade por latitude e longigute
        Quando solicito a latitude e longitude de uma cidade para o serviço de metereologia
        Então devo obter o código de status referente a sua latitude e longitude "200"
            E recebo uma lista com a latitude e longitude da cidade desejada

    Cenário: Cidade não existe
        Quando solicito uma cidade inexistente
        Então devo obter o código de status para cidade inexistente "404"
            E a mensagem de cidade inexistente "city not found"

    Cenário: Não há geolocolização
        Quando solicito uma cidade em branco
        Então devo obter o código de status "400"
            E a mensagem que não há geolocolização "Nothing to geocode"
    
    Cenário: Não há autorização
        Quando solicito uma requisição aonde não possuo autorização
        Então devo obter o código "401"
            E a mensagem que não possuo autorização "Invalid API key. Please see http://openweathermap.org/faq#error401 for more info."
