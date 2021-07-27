#language: pt 
#enconding: UTF-8
#date: 27/07/2021
#Author: Lidiane Carvalho Lopes 
#version: 1.0

Funcionalidade: <compra no site Magalu>
    #CT-0012
    Como um <Usuario>
    Eu quero comprar um produto no site Magalu
    Para que o produto seja entregue na minha casa.

Contexto: 
   Dado que estou no site da Magalu "https://www.magazineluiza.com.br/"
    E efetuo o login
    E clico em pesquisar onde aprenseta "procure por código, nome, marca..."
    E preencho o campo pesquisa "iPhone 12"
    E clico em pesquisar
    
Cenário: Verificar o produto pesquisado
    Quando clico no "Buscar"
    E apresenta a mensagem  "iphone 12 (520 produtos encontrados)" 
    
    Então deve ser apresentado os produtos no site.

Esquema do Cenário: Validar compra de produto não disponivel ou não encontrado.
    Quando pesquiso por "iPhone 12 Apple 128GB Preto Tela 6,1” - Câm. Dupla 12MP iOS"
    Então visualizo os produtos. 
    E a mensagem "não disponivel".
Exemplos: 
    |   Produto                                                                 |   Mensagem validação                                         |      
    |   "Iphone iPhone 12 Apple 128GB Preto Tela 6,1” - Câm. Dupla 12MP iOS"    |   "NÃO DISPONIVEL"                                           |  
    |   "testeeeeee"                                                            |  "Sua busca por testeeeeee não encontrou resultado algum :(" |



