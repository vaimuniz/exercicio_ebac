language: pt

Funcionalidade: Login Loja EBAC
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Autenticação com sucesso
Dado que eu acesse a página de Minha Conta
Quando eu preencher o campo "Email" com "login@ebac.com"
E preencher o campo "Senha" com "senha123"
Então o usuário deve ser redirecionado para a tela de "Checkout"

Cenário: Autenticação com falha
Dado que eu acesse a página de Minha Conta
Quando eu preencher o campo "Email" com "lugin@ebac.com"
E preencher o campo "Senha" com "senha123"
Então o usuário deve ser adicionado um alerta de "Usuário ou senha inválidos"