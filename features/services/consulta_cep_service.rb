class ConsultaCep

  include HTTParty

  base_uri $base_url['backend']['url']


  def get_cep(cep)
    self.class.get("#{cep}")
  end


end
