Quando("realizar uma requisição de consulta para o cep {string}") do |cep|
  @response = ConsultaCep.new.get_cep(cep)
end

Então("valido a consulta do cep com sucesso") do
    expect(@response.code.to_i).to eq(200)
    print "CEP: #{@response['cep']}\n"
    print "#{@response['tipoDeLogradouro']}: #{@response['logradouro']}"
    print "Estado: #{@response['estado']}\n"
    print "Bairro: #{@response['bairro']}\n"
    print "Cidade: #{@response['cidade']}\n"

end

Então("valido a consulta do cep inválido") do
  expect(@response.code.to_i).to eq(404)
  expect(@response['message']).to eq("Endereço não encontrado!")
end
