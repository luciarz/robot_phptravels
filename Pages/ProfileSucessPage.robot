*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***

*** Keywords ***

#Funcionalidade
Capturar e verificar alterar Profile 
    Log to console      Verificar troca do nome
    [Arguments]         ${valor}
    ${v}=               Get Value               xpath://input[@name="firstname"]
    Should Not Be Equal As Strings              ${v}    ${valor}

Verificar redireccionou tela de ProfileSuccess 
    Location Should Contain            account/profile/success
    Log to console                     trocou de tela

#Pasos
Verificar url ProfileSuccess
    Capturar e verificar alterar Profile            Demo
    #Capturar e verificar alterar Profile            NovoNome
    Verificar redireccionou tela de ProfileSuccess 
