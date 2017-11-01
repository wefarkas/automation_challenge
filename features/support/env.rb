require 'httparty'
require 'cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'yaml'
require 'capybara/cucumber'
require 'capybara/rspec'


  #Configuração Driver capybara
  Capybara.register_driver :selenium do |app|

      if $responsivo
        mobile_emulation = { "deviceName" => $emulator }
        capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['--start-maximized'],"mobileEmulation" => mobile_emulation })
      else
        capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['--start-maximized']})
      end

      Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)

    end

  # Set Driver padrão para execução
  Capybara.default_driver = :selenium

  # Timeout padrão de 15s
  Capybara.default_max_wait_time = 15

  # Configuração Responsiva do Site
  $responsivo = false || ENV['RESPONSIVO']
  $emulator = "iPhone 6" || ENV['EMULATOR']

  #username para login
  $username = ENV['USERNAME']
  #password para login
  $password = ENV['PASSWORD']


  # Mapeamento de Yml
  $base_url = YAML.load_file('./config/environment.yml')
