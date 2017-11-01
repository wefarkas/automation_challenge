# Class Home com elementos da pagina Home, utilizando a gem SitePrism para PageObject
# Apos realizar Login, é redirecionado para a área logada.
class Home < SitePrism::Page

  set_url $base_url['frontend']['url']

# ****** ELEMENTOS *****
  #Campo Input UserName
    element :username_input, "input[id='username']"
  #Campo Input Password
    element :password_input, "input[id='password']"
  #Buttun Login
    element :login_button, "button[type='submit']"

# ***** Metodos *****
  # Recebe dois parametros, username e password para realizar o login!
  def login(username, password)
    username_input.set username
    password_input.set password
    login_button.click
  end


end
