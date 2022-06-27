*** Settings ***
Resource    ../Infra/base.robot
Library     ../Infra/Library/Login.py

*** Variables ***
${account_type}     xpath://span[@class="selection"]/span
${txtFirstName2}     xpath://input[@placeholder="First Name"]
${txtLastName2}      xpath://input[@placeholder="Last Name"]
${txtPhone2}         xpath://input[@placeholder="Phone"]
${txtEmail2}         xpath://input[@placeholder="Email"]
${txtPassword2}      xpath://input[@placeholder="Password"]
${btnSignup}        xpath://button[./span[text()="Signup"]]
#${btnSignup}        xpath://button[@class="btn btn-default"]
${valorSelect}      xpath://span[@title="Customer"]
${valorAnterior}    texto

#${valorSelect}      xpath://span[@class="selection"]/span
${btnCookie}        xpath://button[@id="cookie_stop"]
#${type_agent}      xpath://li[text()="Agent"]

*** Keywords ***
#Funcao
Escrever First Name
    #[Arguments]     ${firstName}
    ${firstName}=   Sortear Nome    
    Input Text      ${txtFirstName2}      ${firstName}

Escrever Last Name
    #[Arguments]     ${lastName}
    ${lastName}=    Sortear Sobrenome
    Input Text      ${txtLastName2}         ${lastName}

Escrever Phone
    #[Arguments]     ${phone}
    ${phone}=       Sortear Phone
    Input Text      ${txtPhone2}     ${phone}

Escrever Email
    #[Arguments]     ${email}
    ${email}=       Sortear Email
    Input Text      ${txtEmail2}     ${email}

Escrever Senha Registro
    #[Arguments]     ${password}
    ${password}=    Sortear Senha
    Input Text      ${txtPassword2}  ${password}

Selecionar Tipo de Conta
    #recibe como parametro
    [Arguments]          ${type}
    Click Element       xpath://li[text()="${type}"]

Clicar Botao Signup
    Click button        ${btnSignup}

Clicar Botao Cookie
    Log to console      Cookie clicado
    Click button        ${btnCookie}

#Funcionalidade

Realize Signup
    #[Arguments]     ${firstName}     ${lastName}      ${phone}     ${email}     ${password}

    Escrever First Name
    Escrever Last Name
    Escrever Phone
    Escrever Email
    Escrever Senha Registro

Capturar Tipo de Conta
    Log to Console      Capturar
    ${v}=               Get Text    ${valorSelect}
    Log to Console                  ${v}
    Log to Console                  ${valorAnterior}
Verificar Tipo de Conta
    [Arguments]             ${valor}
    ${v}=                   Get Text          xpath://span[@title="Agent"]
    Should Not Be Equal As Strings         ${v}                    ${valor}
#Pasos
Acessar o site de Registro
    #Log to console      Accesou a tela de signup
    Ir Para  signup

Preencher as informações da tela
    Log to console      Preencheu as informações da tela
    Clicar Botao Cookie
    Realize Signup  
    Capturar Tipo de Conta
    Sleep       2s
    Click Element       ${account_type}
    
    Selecionar Tipo de Conta    Agent   
    Sleep       5s
    Verificar Tipo de Conta     Agent
    

Clicar em Registrar
    Log to console      Clicou em Registrar
    Clicar Botao Signup

Deve ser redirecionado para a tela de loginSignup
    Verificar label Login

