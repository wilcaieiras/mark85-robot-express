*** Settings ***
Documentation        Ações e elementos da página de login

Library        String
Library        Browser

*** Keywords ***
Submit login form
    [Arguments]        ${user}

    Fill text    css=input[placeholder$=mail]    ${user}[email]
    Fill text    css=input[placeholder=Senha]    ${user}[password]

    Click        css=button >> text=Entrar


