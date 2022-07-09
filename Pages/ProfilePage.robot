*** Settings ***
Resource    ../Infra/base.robot
Resource    ./LoginPage.robot
Resource    ./ProfileSucessPage.robot

*** Variables ***
${txtFirstNameProfile}      xpath://input[@name="firstname"]

*** Keywords ***
#Funcoes
Alterar First Name
    [Arguments]     ${FirstName}
    Input Text      ${txtFirstNameProfile}      ${FirstName}

Clicar Botao UpdateProfile
    Log to console      Clicou Update
    Submit form     

#Funcionalidade
Alterar Perfil
    Alterar First Name          Ana

#Passos
Acessar o site de profile
    #Log to console      Acessou o site de profile
    Ir Para             login
    Realize login       user@phptravels.com   demouser
    Ir Para             account/profile
    Clicar Botao Cookie

Alterar as informações do usuario
    Log to console              Alterou as informações do usuario
    Alterar Perfil
    
    
Clicar em Update Profiles
    Log to console                      Clicou em Update Profiles
    Clicar Botao UpdateProfile


Deve ser redirecionado para a tela de profileSucesso
    Log to console      Verificado
    Verificar url ProfileSuccess
