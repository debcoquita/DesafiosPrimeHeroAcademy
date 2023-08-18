*** Settings ***
Library    DateTime
Documentation     Criar uma keyword que receba idade e retorne o ano de nascimento
# Se o ano for menor que 2000, exibir mensagem dizendo que nasceu no século passado

*** Test Cases ***
idade calculando ano de nascimento
    calculando ano de nascimento    26        Atenção! Você nasceu no século passado.  
*** Keywords ***

calculando ano de nascimento
    [Arguments]        ${IDADE}       ${MENSAGEM} 
    Convert To Integer    ${idade}
    ${ANO}    Get Current Date    result_format=%Y
    ${ANO-NASC}    Evaluate    ${ANO} - ${IDADE}
     IF    ${ANO-NASC} < 2000
     Log To Console    ${MENSAGEM}  
    END   
    [Return]    ${ANO-NASC}    ${MENSAGEM}    
   
     Log To Console    ${\n} 

 
