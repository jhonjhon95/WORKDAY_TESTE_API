Dado('que eu faça um GET') do
    $response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT.json')
  end
  
  Entao('Valido o STATUS CODE, mensagem e informações da API') do
    puts "STATUS CODE = #{$response.code}"
    puts "MESSAGEM = #{$response.message}"
    puts "INF. JSON = #{$response.headers}"
  end
  
  Entao('Valido o BODY por completo da API') do
    puts "ELEMENTO JSON =  #{JSON.parse($response.body)["typeOfEstablishment"][rand(55)]["name"]}"
    puts "ELEMENTO JSON =  #{JSON.parse($response.body)["operatingDays"][rand(4)]["label"]}"
    puts "ELEMENTO JSON =  #{JSON.parse($response.body)["videos"][rand(13)]["label"]}"
    puts "ELEMENTO JSON =  #{JSON.parse($response.body)["dominios"]["TIPO_LOGRADOURO"][rand(25)]["name"]}"
    puts "ELEMENTO JSON =  #{JSON.parse($response.body)["dominios"]["SEXO"][rand(2)]["name"]}"
  end