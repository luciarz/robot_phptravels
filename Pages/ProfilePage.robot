*** Settings ***
Resource    ../Infra/base.robot
Resource    ./ProfileSucessPage.robot

*** Variables ***

*** Keywords ***
#Funcoes

#Funcionalidade

#Passos
Acessar o site de profile
    Log to console      Acessou o site de profile
Alterar as informações do usuario
    Log to console      Alterou as informações do usuario
Clicar em Update Profiles
    Log to console      Clicou em Update Profiles
Deve ser redirecionado para a tela de profileSucesso
    Log to console      Verificado