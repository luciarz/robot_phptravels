*** Settings ***
Resource    ../Infra/base.robot
Resource    ./LoginPage.robot
Resource    ./TotalFlightsPage.robot

*** Variables ***
${txtFlyingFrom}          //input[@placeholder="Flying From"]
${txtToDestination}       //input[@placeholder="To Destination"]
${btnFlightsSearch}       //button[@id="flights-search"]

*** Keywords ***
#Funcoes
Preencher Flying From
    [Arguments]            ${flyingfrom}
    Input Text             ${txtFlyingFrom}         ${flyingfrom}
Preencher To Destination
    [Arguments]            ${todestination}
    Input Text             ${txtToDestination}      ${todestination}
Clicar botao Search
    Click button           ${btnFlightsSearch}

#Funcionalidade
Realize Search Flights
    [Arguments]                 ${flyingfrom}       ${todestination}
    Preencher Flying From       ${flyingfrom}  
    Preencher To Destination    ${todestination}
    Clicar botao Search

#Passos
Acessar o site de flights
    Log to console      Acessou o site de flights
    Ir Para             login
    Realize login       user@phptravels.com   demouser
    Ir Para             flights
    Clicar Botao Cookie

Preencher as informações da tela de voos
    Log to console              Preencheu as informações da tela de voos
    Realize Search Flights      GRU     JPA

Verificar label TotalFlights
    Verificar as informações se foram preenchidas       
