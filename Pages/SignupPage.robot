*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${account_type}    xpath://span[@class="selection"]/span
#${type_agent}      xpath://li[text()="Agent"]

*** Keywords ***
#Funcao
Selecionar Tipo de Conta
    #recibe como parametro
    [Arguments]          ${type}
    Click Element       xpath://li[text()="${type}"]

#Pasos
Acessar o site de Registro
    #Log to console      Accesou a tela de signup
    Ir Para  signup

Preencher as informações da tela
    #Log to console      Preencheu as informações da tela
    Sleep       5s
    Click Element       ${account_type}
    #Capturar Tipo de Conta
    Selecionar Tipo de Conta    Agent   
    Sleep       5s
    #Verificar Tipo de Conta

Clicar em Registrar
    Log to console      Clicou em Registrar

