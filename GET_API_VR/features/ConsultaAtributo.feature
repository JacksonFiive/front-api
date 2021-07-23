#language: pt

Funcionalidade: Realizar uma consulta na api
Como um aplicação de serviço
Quero enviar requisições de consulta para uma api exposta  
para retornar um valor aleatorio do atributo “typeOfEstablishment”


@consultar
Cenario: Consulta API EXPOSTA VR
Quando envio uma requisição para consulta de dados
Então devo validar que a chave typeOfEstablishment existe
E devo capturar um dado aleatorio da chave typeOfEstablishment



 
