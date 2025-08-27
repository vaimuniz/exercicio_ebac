language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página do produto "Augusta Pullover Jacket"

Cenário: Seleção de cor do produto
Quando eu selecionar a cor "Orange"  
Então a botão "Orange" deve ser selecionado

Cenário: Seleção de tamanho do produto
Quando eu selecionar o tamanho "XS"  
Então o botão "XS" deve ser selecionado

Cenário: Seleção de quantidade do produto
Quando eu selecionar o +
Então a quantidade deve ser 2

Cenário: Quantidade máxima de produto
Quando eu selecionar o + várias vezes
Então a quantidade não deve ultrapassar 10

Cenário: Limpar seleção
Quando eu clicar no botão "Limpar"
Então a seleção de cor, tamanho e quantidade deve ser limpada

