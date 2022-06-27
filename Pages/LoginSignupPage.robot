*** Settings ***
Resource    ../Infra/base.robot

*** Variables ***
${lblLoginSignup}       xpath://h5[text()="Login"]

*** Keywords ***

Verificar label Login
    Wait Until Page Contains Element    ${lblLoginSignup}