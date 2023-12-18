*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}                 http://www.amazon.com.br
${MENU_ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}  //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEADER_ELETRONICOS}  Eletrônicos e Tecnologia
${TITULO}  Eletrônicos e Tecnologia | Amazon.com.br
${SUB_TOTAL}   //span[@class='a-size-medium a-color-base a-text-bold']


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome        
    Maximize Browser Window    
 
        


Fechar o navegador
    Capture Page Screenshot
    Close Browser

 Acessar a home page do site Amazon.com.br
    Go To    url=${URL} 
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text= ${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se aparece a frase "Subtotal do carrinho"
    Wait Until Page Contains    text= ${SUB_TOTAL}
    Wait Until Element Is Visible    locator=${SUB_TOTAL}


Verificar se o título da página fica "${TITULO}"   
    Title Should Be    title=${TITULO}
    

Verificar se aparece a categoria "${NOME_CATEGORIA}"
     Element Should Be Visible   locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
  Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
  Click Element    locator=nav-search-submit-button
Verficar o resultado da pesquisa se está listando o produto "${PRODUTO}"
  Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3] 


Clicar no aparelho
  Click Element    locator=//img[contains(@alt,'Console Xbox Series S')]
  Click Element    locator=//input[@name='submit.add-to-cart']

Verificar o resultado da pesquisa se está listando o produto "Adicionado ao carrinho"
  Wait Until Page Contains   text=Adicionado ao carrinho

Verificar se o carrinho está vazio    
      Wait Until Page Contains    text=Seu carrinho de compras da Amazon está vazio.

Clicar limpar carrinho
    Click Element    locator=//span[contains(@class,'nav-cart-count nav-cart-1 nav-progressive-attribute nav-progressive-content')]  
    Click Element    locator=//input[@value='Excluir'] 
 

E Fechar Pedido
  Click Element    locator=//input[contains(@name,'proceedToRetailCheckout')]
  

  
    


# Gherkin Steps


Dado que esteja no site Amazon.com.br
  Acessar a home page do site Amazon.com.br
  Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
  Entrar no menu "Eletrônicos"

E Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
  Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E Verificar se aparece a frase "Eletrônicos e Tecnologia"
  Verificar se aparece a frase "Eletrônicos e Tecnologia"

Então Verificar se aparece a categoria "Computadores e Informática"
  Verificar se aparece a categoria "Computadores e Informática"

Quando Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa


Então Verficar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
   Verficar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

  #  Gerkin teste 03

Dado que estou na home page da Amazon.com.br
  Acessar a home page do site Amazon.com.br
  Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando adicionar o produto "Console Xbox Series S" no carrinho
  Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa


E Clicar no Aparelho
  Clicar no aparelho


Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
  Verificar o resultado da pesquisa se está listando o produto "Adicionado ao carrinho"

Quando remover o produto "Console Xbox Series S" do carrinho
  Clicar limpar carrinho

Então o carrinho deve ficar vazio
  Verificar se o carrinho está vazio    




  

  


  





                                                
    


