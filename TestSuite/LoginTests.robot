*** Settings ***
Documentation      Test suite - 66132
Resource            ${EXECDIR}/Core/Main.robot
Test Setup         Abrir Aplicativo
Test Teardown      Fechar Aplicativo

*** Test Cases ***
Cenário 01: Validar de tela login
    [Documentation]   68949
    [Tags]      regressivo  login   ct: 68949

    Dado        que esteja na tela inicial do app
    Quando      clico no botão “Começar”
    Então       devo ser direcionado para a tela de login

Cenário 02: Validar login - com cpf inválido
    [Documentation]   68951
    [Tags]      regresivo   login   ct: 68951

    Dado        que esteja na tela inicial do app
    Quando      clico no botão “Começar”
    E           informo um cpf inválido
    Então       o botão de login deverá estar desabilitado