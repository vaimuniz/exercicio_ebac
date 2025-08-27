language: pt

Funcionalidade: Tela de Cadastro: Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu acesse a página de Checkout

Cenário: Cadastrar campos obrigatórios
  Quando eu preencher o campo "Nome" com "David", "Sobrenome" com "Muniz", "País" com "Brasil", "Endereço" com "Rua Cidada de Laguna, 764", 
  "Cidade" com "Curitiba", "CEP" com "81240-250", "Telefone" com "(41) 99955-2451" e "Email" com "david@ebac.com"
  Então os campos obrigatórios serão preenchidos corretamente

Esquema do Cenário: Cadastrar campos obrigatórios
  Quando preencher <nome>, <sobrenome>, <país>, <endereço>, <cidade>, cep>, <telefone> e <email>
  Então os campos obrigatórios serão preenchidos corretamente
  Exemplos:
    | nome   | sobrenome | país   | endereço                         | cidade         | cep       | telefone        | email          |
    | David  | Muniz     | Brasil | Rua Cidada de Laguna, 764        | Curitiba       | 81240-250 | (41) 99955-2451 | david@ebac.com |
    | Maria  | Silva     | Brasil | Avenida das Torres, 123          | São Paulo      | 01000-000 | (11) 91234-5678 | maria@ebac.com |
    | João   | Pereira   | Brasil | Rua das Flores, 456              | Rio de Janeiro | 20000-000 | (21) 99876-5432 | joao@ebac.com  |
    | Ana    | Costa     | Brasil | Rua do Comércio, 789             | Belo Horizonte | 30000-000 | (31) 98765-4321 | ana@ebac.com   |

Cenário: E-mail em formato inválido
  Quando eu preencher o campo "Email" com "david@ebac"
  Então o campo "Email" deve exibir a mensagem de erro "Por favor, insira um endereço de e-mail válido."

Esquema do Cenário: E-mail em formato inválido
  Quando eu preencher o campo "Email" com <email>
  Então o campo "Email" deve exibir a mensagem de <erro>
  Exemplos:
    | email        | erro                                            |
    | david@ebac   | Por favor, insira um endereço de e-mail válido. |
    | maria@ebac   | Por favor, insira um endereço de e-mail válido. |
    | joao@ebac.   | Por favor, insira um endereço de e-mail válido. |
    | ana@ebac     | Por favor, insira um endereço de e-mail válido. |

Cenário: Campos vazios
    Quando eu deixar os campos obrigatórios vazios
    Então o campo "Nome", "Sobrenome", "País", "Endereço", "Cidade", "CEP", "Telefone" ou "Email" deve exibir a mensagem de erro "Este campo é obrigatório."

Esquema do Cenário: Campos vazios
    Quando eu deixar os campos obrigatórios vazios
    Então o campo <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <cep>, <telefone> ou <email> deve exibir a mensagem de <erro>
    Exemplos:
    | nome    | sobrenome | país   | endereço                          | cidade     | cep        | telefone         | email            | erro                      |
    |         | Muníz     | Brasil | Rua Cidade de Laguna, 764         | Curitiba   | 81240-250  | 4199955-2451     | david@ebac.com   | Este campo é obrigatório. |
    | David   |           | Brasil | Rua Cidade de Laguna, 764         | Curitiba   | 81240-250  | 4199955-2451     | david@ebac.com   | Este campo é obrigatório. |
    | David   | Muníz     |        | Rua Cidade de Laguna, 764         | Curitiba   | 81240-250  | 4199955-2451     | david@ebac.com   | Este campo é obrigatório. |
    | David   | Muníz     | Brasil |                                   | Curitiba   | 81240-250  | 4199955-2451     | david@ebac.com   | Este campo é obrigatório. |
    | David   | Muníz     | Brasil | Rua Cidade de Laguna, 764         |            | 81240-250  | 4199955-2451     | david@ebac.com   | Este campo é obrigatório. |
    | David   | Muníz     | Brasil | Rua Cidade de Laguna, 764         | Curitiba   |            | 4199955-2451     | david@ebac.com   | Este campo é obrigatório. |
    | David   | Muníz     | Brasil | Rua Cidade de Laguna, 764         | Curitiba   | 81240-250  |                  | david@ebac.com   | Este campo é obrigatório. |
    | David   | Muníz     | Brasil | Rua Cidade de Laguna, 764         | Curitiba   | 81240-250  | 4199955-2451     |                  | Este campo é obrigatório. |
