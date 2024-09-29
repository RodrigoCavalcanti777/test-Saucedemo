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
    Então o campo de nome de usuário deve estar visível
    E o campo de senha deve estar visível
    E o botão de login deve estar visível
    E o logotipo "Swag Labs" deve estar visível

  Cenário: Verificar funcionamento dos links de ajuda e redes sociais
    Quando eu clico no link "Twitter"
    Então eu devo ser redirecionado para a página do Twitter
    Quando eu clico no link "Facebook"
    Então eu devo ser redirecionado para a página do Facebook
    Quando eu clico no link "LinkedIn"
    Então eu devo ser redirecionado para a página do LinkedIn

  Cenário: Tentativa de login com caracteres especiais no nome de usuário
    Dado eu preencho o campo de nome de usuário com "!@#$%^&*"
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ver a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

  Cenário: Tentativa de login com espaços no nome de usuário
    Dado eu preencho o campo de nome de usuário com "   standard_user   "
    E eu preencho o campo de senha com "secret_sauce"
    Quando eu clico no botão de login
    Então eu devo ser redirecionado para a página de produtos sem espaços no nome de usuário

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

  Cenário: Login com preenchimento automático do navegador
    Dado que o navegador preenche automaticamente os campos de nome de usuário e senha
    Quando eu clico no botão de login
    Então eu devo ser redirecionado para a página de produtos


  Cenário: Tentativa de login após um longo período de inatividade
    Dado eu estou na página de login
    E eu aguardo 15 minutos sem realizar ações
    Quando eu preencho os campos de nome de usuário e senha
    Então eu devo ser redirecionado para a página de produtos sem problemas

  Cenário: Verificar responsividade da página de login em diferentes tamanhos de tela
    Dado eu estou acessando a página de login em um dispositivo móvel
    Quando eu visualizo a interface
    Então os campos de nome de usuário, senha e botão de login devem estar visíveis e acessíveis
