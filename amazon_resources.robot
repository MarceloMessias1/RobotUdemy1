*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}                 http://www.amazon.com.br
${MENU_ELETRONICOS}    //a[@data-csa-c-slot-id='nav_cs_2']


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome    
    Maximize Browser Window    

        


Fechar o navegador
    Close Browser

 Acessar a home page do site Amazon.com.br
    Go To    url=${URL} 
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
