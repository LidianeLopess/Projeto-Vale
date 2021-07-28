#language: pt 
#enconding: UTF-8
#date: 26/07/2021
#Author: Lidiane Carvalho Lopes 
#version: 1.0

Funcionalidade: <compra no site Magalu com sucesso>
    
    Como um <Usuario>
    Eu quero comprar um produto no site Magalu
    Para que o produto seja entregue na minha casa.

Contexto: 
   Dado que estou no site da Magalu "https://www.magazineluiza.com.br/"
    E efetuo o login
    E clico em pesquisar onde aprenseta "procure por código, nome, marca..."
    E preencho o campo pesquisa "amaciante"
    E clico em Buscar
    E clico no produto desejado
    E redirecia para o protudo desejado
    E apresenta a "adicionar a sacola"
Cenário: Validar a compra de um produto
    Quando clico em "adicionar a sacola"
    E redireciona para a sacola de compras
    E preencho o campo CEP "16680-000"
    E clico em OK
    E vejo o total da compra 
    E clico  em continuar
    E apresenta a opções de entrega
    E clico em continuar 

    Então deve ser apresentado as opções de pagamentos
    E efetuo o pagamento.
    E apresenta a tela "meus pedidos"



