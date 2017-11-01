#language: pt
#utf-8

@credenciais
Funcionalidade: Credenciais de acesso
  Eu como usuario do Site
  Quero acessar a aplicação
	Para acessar suas funcionalidades

Contexto: Acesso a Home do Site
  Dado que eu esteja na home do site

@login
  Cenário: Realizar login na aplicação
    Quando realizar o login na aplicação
    Então valido a mensagem de sucesso "You logged into a secure area!"

@logout
  Cenário: Realizar logout na aplicação
    Quando realizar o login na aplicação
    E fazer o logout na aplicação
    Então valido a mensagem de sucesso "You logged out of the secure area!"
