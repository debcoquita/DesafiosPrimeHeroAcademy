*** Settings ***
Documentation     Exiba cada uma das frutas de uma lista usando um For Simples
                                                                                                                                                                                                                                                            
*** Test Cases ***
Contando a lista de FRUTAS
    [Tags]        FRUTAS
    exibir lista de FRUTAS

*** Keywords ***

exibir lista de FRUTAS

    @{FRUTAS}    Create List        Banana    Manga    Acerola    Mangaba    Pitanga    Mamão    Pitomba
    FOR   ${FRUTA}  IN   @{FRUTAS}
        Log To Console   ${FRUTA}
    END

    #para(FOR) cada fruta${FRUTA} que está dentro da lista de frutas @{FRUTAS} 
# quero que (Log) imprima a fruta (${fruta}) que voce percorreu na minha tela e END
#Quando ouvir interar sempre tem que usar o FOR