 
Quando('envio uma requisição para consulta de dados') do   
   @result = Consulta.new.busca()
   @result_parsed = @result.parsed_response 
end     

Então('devo validar que a chave typeOfEstablishment existe') do

   #expect ( valor que contenho). to match ( valor esperado) ~> faz o match entre os valores informados
   expect(@result.body).to match("typeOfEstablishment")
  end   

E('devo capturar um dado aleatorio da chave typeOfEstablishment') do
   #.SAMPLE escolha uma 'amostra' ou seja pega um valor aleatorio do hash
   puts "\n #O valor aleatório é: #{@result_parsed["typeOfEstablishment"].sample}"     
  end         


 
