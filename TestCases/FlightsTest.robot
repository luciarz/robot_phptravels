*** Settings ***
Resource    ../Pages/FlightsPage.robot

Test Setup      Open Session
Test Teardown   Close Session

*** Test Cases ***
Buscar voos
    [Tags]      flights
    Acessar o site de flights
    Preencher as informações da tela de voos
    Verificar label TotalFlights