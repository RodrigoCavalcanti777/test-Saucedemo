Funcionalidade: Homepage da SauceDemo
  Como um usuário autenticado
  Eu quero visualizar a homepage
  Para navegar e selecionar produtos para compra

  Cenário: Verificar exibição correta dos produtos
    Dado que estou na página de produtos
    Então eu devo ver uma lista de produtos disponíveis
    E cada produto deve ter uma imagem, um nome e um preço

  Cenário: Adicionar produto ao carrinho
    Dado que estou na página de produtos
    Quando eu clico no botão "Adicionar ao carrinho" do produto "Sauce Labs Backpack"
    Então o produto deve ser adicionado ao carrinho
    E eu devo ver a notificação "1 item adicionado ao carrinho"

  Cenário: Remover produto do carrinho
    Dado que eu adicionei o produto "Sauce Labs Backpack" ao carrinho
    Quando eu vou para o carrinho
    E eu clico no botão "Remover" ao lado do produto "Sauce Labs Backpack"
    Então o carrinho deve estar vazio
    E eu devo ver a mensagem "Seu carrinho está vazio"

  Cenário: Verificar a quantidade de produtos no carrinho
    Dado que estou na página de produtos
    E eu adiciono 2 produtos diferentes ao carrinho
    Quando eu vou para o carrinho
    Então eu devo ver o número total de produtos como "2"

  Cenário: Navegar para a página de detalhes do produto
    Dado que estou na página de produtos
    Quando eu clico no nome do produto "Sauce Labs Backpack"
    Então eu devo ser redirecionado para a página de detalhes do produto "Sauce Labs Backpack"
    E eu devo ver informações detalhadas sobre o produto

  Cenário: Verificar a funcionalidade do botão de "Comprar agora"
    Dado que estou na página de produtos
    Quando eu clico no botão "Comprar agora" do produto "Sauce Labs Backpack"
    Então eu devo ser redirecionado para a página de checkout

  Cenário: Aplicar um filtro nos produtos
    Dado que estou na página de produtos
    Quando eu seleciono o filtro "Preço (menor primeiro)"
    Então os produtos devem ser exibidos em ordem crescente de preço

  Cenário: Verificar a exibição do logotipo da empresa
    Dado que estou na página de produtos
    Então eu devo ver o logotipo "Swag Labs" na parte superior da página

  Cenário: Verificar a funcionalidade de pesquisa de produtos
    Dado que estou na página de produtos
    Quando eu digito "Backpack" na barra de pesquisa
    E eu clico no botão de pesquisa
    Então eu devo ver a lista de produtos contendo "Backpack"

  Cenário: Navegar para a página de checkout a partir da homepage
    Dado que estou na página de produtos
    E eu adiciono um produto ao carrinho
    Quando eu clico no ícone do carrinho
    Então eu devo ser redirecionado para a página de checkout

  Cenário: Verificar a presença de links de navegação
    Dado que estou na página de produtos
    Então eu devo ver links para as páginas "Sobre", "Contato" e "Política de Privacidade"

  Cenário: Validar a funcionalidade de logout
    Dado que estou na página de produtos
    Quando eu clico no botão de logout
    Então eu devo ser redirecionado para a página de login
    E eu não devo estar autenticado
