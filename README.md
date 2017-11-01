
#**Preparação do Ambiente**

* Instalar o **Bundler** para gerenciar as dependências declaradas no **Gemfile**

		gem install bundler

* Após a instalação executar o comando:

			`bundle`



#**Execução dos Testes**

### **Testes Frontend**
* Para realizar os testes, é necessário passar os parâmetros **USERNAME** e **PASSWORD** com seus respectivos valores

#### **Tags**

* *@credenciais* - Executa os testes de Sucesso relacionados ao Login e logout da aplicação.
* *@login* - Executa o teste de Login.
* *@logout* - Executa o teste de Logout.
	 **Exemplo:** cucumber -t @logout USERNAME=tomsmith PASSWORD=SuperSecretPassword!


### **Testes Backend**

#### **Tags**

* *@consulta_cep* - Executa os testes de Sucesso e Inválido  relacionados a consulta de Cep.
* *@consulta_cep_sucesso* - Executa o teste de cep válido.
* *@consulta_cep_invalido* - Executa o teste de cep inválido.
	 **Exemplo:** cucumber -t @consulta_cep_invalido
