*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Library/Uteis.py
Library     Library/Config.py

*** Variables ***
#${base_url}     Pegar Valor Json    base_url

*** Keywords ***
#quedo
Open Session
    #variables locales
    ${base_url}=     Pegar Valor Json    base_url
    ${browser}=      Pegar Valor Json    browser
    Open Browser        ${base_url}     ${browser}
    Get Selenium speed
    Maximize Browser Window


Close Session
    Close Browser

Ir Para
    [Arguments]     ${path}
    ${base_url}=     Pegar Valor Json    base_url
    Go To   ${base_url}${path}