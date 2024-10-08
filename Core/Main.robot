*** Settings ***
#######################################################
#    Libraries    #
#######################################################
Library     AppiumLibrary
Library     OperatingSystem
Library     RequestsLibrary
Library     String
Library     Collections
Library     DateTime
Library      ${EXECDIR}/Resources/libs/utyls.py
#######################################################
#    Resources    #
#######################################################
Resource    ${EXECDIR}/Core/BDDpt-BR.robot
Resource    ${EXECDIR}/Core/Comum.robot
Resource    ${EXECDIR}/Core/Variables.robot
#######################################################
#    Page Objects    #
#######################################################
Resource    ${EXECDIR}/Resources/PageObjects/Pages/LoginPage.robot
#######################################################
#    Locators    #
#######################################################
Resource    ${EXECDIR}/Resources/PageObjects/Locators/LoginLocators.robot