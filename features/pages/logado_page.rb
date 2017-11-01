# Class Home com elementos da pagina Logado, utilizando a gem SitePrism para PageObject
class Logado < SitePrism::Page

# ****** ELEMENTOS *****
  #Campo div messages_sucess
    element :message_txt, :css,  "div[id='flash']"
  #Botão button Logout
    element :logout_button, "a[href='/logout']"

end
