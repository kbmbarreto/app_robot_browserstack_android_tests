*** Settings ***
Resource    ${EXECDIR}/Core/Main.robot
Library     AppiumLibrary

*** Keywords ***
Abrir Aplicativo

    Open Application    http://127.0.0.1:4723
    ...     platformName=Android
    ...     deviceName=Android14
    ...     appPackage=br.com.mobilesaude.epharma.guia
    ...     appActivity=br.com.mobilesaude.epharma.guia.MainActivity
    ...     automationName=UiAutomator2
    ...     autoGrantPermissions=${True}
    ...     autoAcceptAlerts=${True}

Fechar Aplicativo
    AppiumLibrary.Close All Applications
