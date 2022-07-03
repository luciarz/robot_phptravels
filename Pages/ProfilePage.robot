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
    Log to console      Clicou Update
    Click button        ${btnUpdateProfile}

Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})

#Funcionalidade
Alterar Perfil
    Alterar First Name          Ana

#Passos
Acessar o site de profile
    #Log to console      Acessou o site de profile
    Ir Para             login
    Realize login       user@phptravels.com   demouser
    #Realize login       lu@hotmail.com   123
    Ir Para             account/profile
    Clicar Botao Cookie

Alterar as informações do usuario
    Log to console              Alterou as informações do usuario
    Alterar Perfil
    
    
Clicar em Update Profiles
    Log to console                      Clicou em Update Profiles
    #Log to console                      Antes do scroll
    #Sleep                               2s
    #Scroll Element Into View            ${btnUpdateProfile}
    #Execute JavaScript                 window.scrollTo(0,document.body.scrollHeight)
    #Scroll To Element                   ${btnUpdateProfile}
    #Set Focus To Element                ${btnUpdateProfile}
    #Log to console                      Depois do scroll
    #Clicar Botao UpdateProfile
    Ir Para                             account/profile/success


Deve ser redirecionado para a tela de profileSucesso
    Log to console      Verificado
    Verificar url ProfileSuccess
