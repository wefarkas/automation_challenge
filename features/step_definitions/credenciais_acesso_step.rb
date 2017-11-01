Dado("que eu esteja na home do site") do
  @home = Home.new
  @home.load
end

Quando("realizar o login na aplicação") do
  @home.login($username,$password)
end

Então("valido a mensagem de sucesso {string}") do |string|
  expect(Logado.new.message_txt.text.split(" ×").first).to eq string
end

Quando("fazer o logout na aplicação") do
  Logado.new.logout_button.click
end
