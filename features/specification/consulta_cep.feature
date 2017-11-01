#language: pt
#utf-8
@consulta_cep
Funcionalidade: Consultar CEP


@consulta_cep_sucesso
  Cenário: Consultar cep com sucesso
    Quando realizar uma requisição de consulta para o cep "06460000"
    Então valido a consulta do cep com sucesso


@consulta_cep_invalido
  Cenário: Consultar cep inválido
    Quando realizar uma requisição de consulta para o cep "06100010"
    Então valido a consulta do cep inválido
