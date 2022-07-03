*** Settings ***
Resource    ../Infra/base.robot
Resource    ./LoginPage.robot
Resource    ./ProfileSucessPage.robot

*** Variables ***
${txtFirstNameProfile}      xpath://input[@name="firstname"]
${btnUpdateProfile}         xpath://button[text()="Update Profile"]

*** Keywords ***
#Funcoes
Alterar First Name
    [Arguments]     ${FirstName}
    Input Text      ${txtFirstNameProfile}      ${FirstName}

Clicar Botao UpdateProfile
    Log to console  Clicou Update
    Click button    ${btnUpdateProfile}
    
#Funcionalidade

#Passos
Acessar o site de profile
    #Log to console      Acessou o site de profile
    Ir Para             login
    Realize login       user@phptravels.com   demouser
    Ir Para             account/profile
    Clicar Botao Cookie
Alterar as informações do usuario
    Log to console              Alterou as informações do usuario
    Alterar First Name          Ana
    Log to console              Antes do scroll
    Sleep                       2s
    #Scroll To Element           ${btnUpdateProfile}
    Execute JavaScript          window.scrollTo(0,document.body.scrollHeight)
    Log to console              Depois do scroll
    Clicar Botao UpdateProfile

Clicar em Update Profiles
    Log to console      Clicou em Update Profiles
Deve ser redirecionado para a tela de profileSucesso
    Log to console      Verificado