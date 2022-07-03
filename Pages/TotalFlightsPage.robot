*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${liLoginSignup}       xpath://a[contains(text(),"Total Flights")]

*** Keywords ***
#Funcoes

#Funcionalidade
Capturar e verificar alterar FlyingFrom        
    [Arguments]         ${valorflyingfrom}
    Log to console      Verificar alterar FlyingFrom
    ${v}=               Get Value           //input[@id="autocomplete"]
    Should Be Equal     ${v}                ${valorflyingfrom}

Capturar e verificar alterar ToDestination    
    [Arguments]         ${valortodestination}
    Log to console      Verificar alterar ToDestination
    ${v}=               Get Value           //input[@id="autocomplete2"]
    Should Be Equal     ${v}                ${valortodestination}      

#Pasos
Verificar as informações se foram preenchidas
    Log to console      Foi para a tela "Total Flights"
    Wait Until Page Contains Element                ${liLoginSignup}
    Capturar e verificar alterar FlyingFrom         GRU          
    Capturar e verificar alterar ToDestination      JPA
