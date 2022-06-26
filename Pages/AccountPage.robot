*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***

${lblProducts}      xpath://h2[contains(text(),"Hi")]

*** Keywords ***

Verificar label Products
    Wait Until Page Contains Element    ${lblProducts}