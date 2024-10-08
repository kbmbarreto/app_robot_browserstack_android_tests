*** Settings ***
Resource   ${EXECDIR}/Core/Main.robot
Library  AppiumLibrary

*** Keywords ***

que esteja na tela inicial do app
    AppiumLibrary.Wait Until Page Contains Element      ${login.btnComecar}                 60
   
clico no botão “Começar”
    AppiumLibrary.Click Element                         ${login.btnComecar}
   
devo ser direcionado para a tela de login
   Sleep    5s
   AppiumLibrary.Wait Until Page Contains Element       ${login.txtBemVindo}

informo um cpf inválido
    AppiumLibrary.Input Text                           ${login.inpCpf}                     ${CPF_INVALIDO}

o botão de login deverá estar desabilitado
    AppiumLibrary.Element Attribute Should Match        ${login.btnAvancarCpfDesabilitado}              clickable    false
