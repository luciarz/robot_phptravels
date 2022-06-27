*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${lblLoginSignup}       xpath://h5[@class="title"]

*** Keywords ***

Verificar label Login
    Wait Until Page Contains Element    ${lblLoginSignup}