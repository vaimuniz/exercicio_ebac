language: pt

Funcionalidade: Tela de Cadastro: Checkout

Cenário: Cadastrar campos obrigatórios
  Dado que eu acesse a página de Checkout
  Quando eu preencher o campo "Nome" com "David"
  E preencher o campo "Sobrenome" com "Muniz"
  E preencher o campo "País" com "Brasil"
  E preencher o campo "Endereço" com "Rua Cidada de Laguna, 764"
  E preencher o campo "Cidade" com "Curitiba"
  E preencher o campo "CEP" com "81240-250"
  E preencher o campo "Telefone" com "(41) 99955-2451"
  E preencher o campo "Email" com "david@ebac.com"
  Então os campos obrigatórios serão preenchidos corretamente

Esquema do Cenário: Cadastrar campos obrigatórios
  Dado que eu acesse a página de Checkout
  Quando eu preencher o campo "Nome" com <nome>
  E preencher o campo "Sobrenome" com <sobrenome>
  E preencher o campo "País" com <país>
  E preencher o campo "Endereço" com <endereço>
  E preencher o campo "Cidade" com <cidade>
  E preencher o campo "CEP" com <cep>
  E preencher o campo "Telefone" com <telefone>
  E preencher o campo "Email" com <email>
  Então os campos obrigatórios serão preenchidos corretamente
  Exemplos:
    | nome   | sobrenome | país   | endereço                         | cidade         | cep       | telefone        | email          |
    | David  | Muniz     | Brasil | Rua Cidada de Laguna, 764        | Curitiba       | 81240-250 | (41) 99955-2451 | david@ebac.com |
    | Maria  | Silva     | Brasil | Avenida das Torres, 123          | São Paulo      | 01000-000 | (11) 91234-5678 | maria@ebac.com |
    | João   | Pereira   | Brasil | Rua das Flores, 456              | Rio de Janeiro | 20000-000 | (21) 99876-5432 | joao@ebac.com  |
    | Ana    | Costa     | Brasil | Rua do Comércio, 789             | Belo Horizonte | 30000-000 | (31) 98765-4321 | ana@ebac.com   |

Cenário: E-mail em formato inválido
  Dado que eu acesse a página de Checkout
  Quando eu preencher o campo "Email" com "david@ebac"
  Então o campo "Email" deve exibir a mensagem de erro "Por favor, insira um endereço de e-mail válido."

Esquema do Cenário: E-mail em formato inválido
  Dado que eu acesse a página de Checkout
  Quando eu preencher o campo "Email" com <email>
  Então o campo "Email" deve exibir a mensagem de <erro>
  Exemplos:
    | email        | erro                                            |
    | david@ebac   | Por favor, insira um endereço de e-mail válido. |
    | maria@ebac   | Por favor, insira um endereço de e-mail válido. |
    | joao@ebac    | Por favor, insira um endereço de e-mail válido. |
    | ana@ebac     | Por favor, insira um endereço de e-mail válido. |

Cenário: Campos vazios
    Dado que eu acesse a página de Checkout
    Quando eu deixar os campos obrigatórios vazios
    Então o campo "Nome" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "Sobrenome" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "País" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "Endereço" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "Cidade" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "CEP" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "Telefone" deve exibir a mensagem de erro "Este campo é obrigatório."
    E o campo "Email" deve exibir a mensagem de erro "Este campo é obrigatório."

Esquema do Cenário: Campos vazios
  Dado que eu acesse a página de Checkout
    Quando eu deixar os campos obrigatórios vazios
    Então o campo <nome> deve exibir a mensagem de <erro>
    E o campo <sobrenome> deve exibir a mensagem de <erro>
    E o campo <país> deve exibir a mensagem de <erro>
    E o campo <endereço> deve exibir a mensagem de <erro>
    E o campo <cidade> deve exibir a mensagem de <erro>
    E o campo <cep> deve exibir a mensagem de <erro>
    E o campo <telefone> deve exibir a mensagem de <erro>
    E o campo <email> deve exibir a mensagem de <erro>
    Exemplos:
    | nome    | sobrenome | país   | endereço                          | cidade     | cep        | telefone         | email            | erro                      |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
    |         |           |        |                                   |            |            |                  |                  | Este campo é obrigatório. |
