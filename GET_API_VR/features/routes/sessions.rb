require 'httparty'
 #desabilita o ssl para conseguir realizar a chamada
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
class Consulta 
    include HTTParty
    base_uri "https://portal.vr.com.br/"

    def busca()
        return self.class.get ('/api-web/comum/enumerations/VRPAT')
        
    end


     

end