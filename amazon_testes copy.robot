*** Settings ***
Documentation        Essa suíte testa o site da Amazon.com.busca_produtos
Resource             amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador



*** Test Cases ***
Caso de Testes 01 - Acesso ao menu "Eletrônicos"
    [Documentation]  Esse teste verifica o menu eletrônico da Amazon.com.br
    ...              e verifica a categoria de computadores e informática
    [Tags]           bdd  categorias 
     Dado que esteja no site Amazon.com.br
     Quando acessar o menu "Eletrônicos"
     E Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
     E Verificar se aparece a frase "Eletrônicos e Tecnologia"
     Então Verificar se aparece a categoria "Computadores e Informática"
    

Caso de Testes 02 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos  lista_busca
   Dado que esteja no site Amazon.com.br
   Quando Digitar o nome de produto "Xbox Series S" no campo de pesquisa
   Clicar no botão de pesquisa
   Então Verficar o resultado da pesquisa se está listando o produto "Console Xbox Series S"



 