##### Buscar cidade por id
Quando('solicito o id de uma cidade para o serviço de metereologia') do
    @id = Servico.buscar_cidade_por_id
end

Então('devo obter o código de status referente ao id {string}') do |status|
    expect(@id.response.code).to eql status
end
  
Então('recebo uma lista com o id da cidade desejada') do
    expect(@id.parsed_response['name']).to eql 'Brasília'
    expect(@id.parsed_response['id'].to_s).to eql '3469058'
end

#### Buscar cidade por nome
Quando('solicito o nome de uma cidade para o serviço de metereologia') do
    @nome = Servico.buscar_cidade_por_nome
end
  
Então('devo obter o código de status referente ao nome {string}') do |status|
    expect(@nome.response.code).to eql status
end
  
Então('recebo uma lista com o nome da cidade desejada') do
    expect(@nome.parsed_response['name']).to eql 'Brasília'
    expect(@nome.parsed_response['id'].to_s).to eql '3469058'
end

#### Buscar cidade por latitude e longitude
Quando('solicito a latitude e longitude de uma cidade para o serviço de metereologia') do
    @lat = Servico.buscar_cidade_por_lat_long
end
  
Então('devo obter o código de status referente a sua latitude e longitude {string}') do |status|
    expect(@lat.response.code).to eql status
end
  
Então('recebo uma lista com a latitude e longitude da cidade desejada') do
    expect(@lat.parsed_response['name']).to eql 'Brasília'
    expect(@lat.parsed_response['id'].to_s).to eql '3469058'
end

#### Cidade não existe
Quando('solicito uma cidade inexistente') do
    @city = Servico.cidade_nao_encontrada
end
  
Então('devo obter o código de status para cidade inexistente {string}') do |status|
    expect(@city.response.code).to eql status
end
  
Então('a mensagem de cidade inexistente {string}') do |msg_city|
    expect(@city.parsed_response["message"]).to eql msg_city
end

#### Não há geolocalização
Quando('solicito uma cidade em branco') do
    @geo = Servico.nao_ha_geolocalizacao
end
  
Então('devo obter o código de status {string}') do |status|
    expect(@geo.response.code).to eql status
end
  
Então('a mensagem que não há geolocolização {string}') do |msg_geo|
    expect(@geo.parsed_response["message"]).to eql msg_geo
end

#### Não possui autorização
Quando('solicito uma requisição aonde não possuo autorização') do
    @auth = Servico.nao_ha_autorizacao
end
  
Então('devo obter o código {string}') do |status|
    expect(@auth.response.code).to eql status
end
  
Então('a mensagem que não possuo autorização {string}') do |no_auth|
    expect(@auth.parsed_response["message"]).to eql no_auth
end