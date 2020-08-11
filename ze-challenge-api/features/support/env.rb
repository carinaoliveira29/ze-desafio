require 'httparty'
require 'cucumber'
require 'rspec'
require 'json'

class Servico
    include HTTParty
    base_uri 'api.openweathermap.org/data/2.5/weather'
    default_params output: 'json'

    def self.buscar_cidade_por_id
        get('?id=3469058&appid=04e93d930d86979cd8f9d45b58d98912')
    end

    def self.buscar_cidade_por_nome
        get('?q=Brasilia&appid=04e93d930d86979cd8f9d45b58d98912')
    end

    def self.buscar_cidade_por_lat_long
        get('?lat=-15.78&lon=-47.93&appid=04e93d930d86979cd8f9d45b58d98912')
    end

    def self.cidade_nao_encontrada
        get("?id=323232&appid=04e93d930d86979cd8f9d45b58d98912")
    end

    def self.nao_ha_geolocalizacao
        get("?appid=04e93d930d86979cd8f9d45b58d98912")
    end

    def self.nao_ha_autorizacao
        get("?id=xxxxx")
    end

end