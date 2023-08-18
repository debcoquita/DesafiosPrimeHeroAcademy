Library    SeleniumLibrary
* Settings *
Library    SeleniumLibrary
*** Variables ***
${URL}    https://www.google.com/

* Test Cases *
Cenario:teste google
    [Tags]    google
    abrindo navegador
    clicando na barra de pesquisa
    #digitando "batata frita"
* Keywords * 
abrindo navegador
    Open Browser    ${URL}    Chrome
clicando na barra de pesquisa
    Click Element    Xpath://textarea[contains(@jsname,'yZiJbe')]

    