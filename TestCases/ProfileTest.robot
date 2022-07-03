*** Settings ***
Resource    ../Pages/ProfilePage.robot

Test Setup      Open Session
#Test Teardown   Close Session

*** Test Cases ***
Alterar profile de usuario
    [Tags]      profile
    Acessar o site de profile
    Alterar as informações do usuario
    Clicar em Update Profiles
    Deve ser redirecionado para a tela de profileSucesso
