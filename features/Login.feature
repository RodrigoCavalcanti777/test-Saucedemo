Funcionalidade: Login na SauceDemo
  Como um usuário da SauceDemo
  Eu quero ser capaz de fazer login
  Para acessar a loja e comprar produtos

  Cenário: Login com sucesso 
    Dado eu preencho o campo de nome de usuário com "standard_user"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ser redirecionado para a página de produtos
    E eu devo ver o título "Products"

  Cenário: Falha no login com senha incorreta 
    Dado eu preencho o campo de nome de usuário com "standard_user"
    E eu preencho o campo de senha com "senha_errada"
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

  Cenário: Login com usuário bloqueado
    Dado eu preencho o campo de nome de usuário com "locked_out_user"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Sorry, this user has been locked out."

  Cenário: Tentativa de login sem preencher os campos 
    Dado eu deixo os campos de nome de usuário e senha vazios
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Username is required"

  Cenário: Tentativa de login sem preencher o campo de senha
    Dado eu preencho o campo de nome de usuário com "standard_user"
    E eu deixo o campo de senha vazio
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Password is required"

  Cenário: Tentativa de login sem preencher o campo de nome de usuário
    Dado eu deixo o campo de nome de usuário vazio
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Username is required"

  Cenário: Login com o usuário problemático 
    Dado eu preencho o campo de nome de usuário com "problem_user"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ser redirecionado para a página de produtos
    E eu devo ver erros de carregamento de imagens nos produtos

  Cenário: Login com o usuário de desempenho ruim 
    Dado eu preencho o campo de nome de usuário com "performance_glitch_user"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ser redirecionado para a página de produtos após um atraso

  Cenário: Verificar visibilidade dos elementos da página de login 
    Dado que o usuário acesse a aplicação SauceDemo
    Quando a aplicaçaõ for exibida
    Então o campo de nome de usuário deve estar visível
    E o campo de senha deve estar visível
    E o botão de login deve estar visível
    E o logotipo "Swag Labs" deve estar visível


  Cenário: Tentativa de login com caracteres especiais no nome de usuário
    Dado eu preencho o campo de nome de usuário com "!@#$%^&*"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Username and password do not match any user in this service"


  Cenário: Tentativa de login com nome de usuário em maiúsculas e minúsculas
    Dado eu preencho o campo de nome de usuário com "STANDARD_user"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ser redirecionado para a página de produtos

  Cenário: Várias tentativas de login com falha 
    Dado eu preencho o campo de nome de usuário com "standard_user"
    E eu preencho o campo de senha com "senha_errada"
    Quando eu tento fazer login 3 vezes seguidas com senha incorreta
    Então eu devo ver uma mensagem de erro "Você excedeu o número de tentativas permitidas. Tente novamente mais tarde."

 
