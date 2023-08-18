*** Settings ***
Library    String
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Documentation    A partir da lista ["A", 1, "B", 2, "C" e 3], adicionar somente os números numa nova lista, 
#  tratar os caracteres como exceção e exibir a nova lista a cada iteração usando Finally.

*** Variables ***
@{LISTA}    A     1     B    2     C     3
${item}



*** Test Cases ***
adicionando itens na lista nova
    [Tags]    adicionando
    adiciona os numeros na nova lista    

*** Keywords ***
adiciona os numeros na nova lista

Log To Console    ${\n}

  @{NOVA-LISTA}        Create List

    FOR    ${ITEM}    IN    @{LISTA}
          
            Log To Console   Lista Base - ${LISTA}  
        
        TRY
            Evaluate          ${item} + 1

            Append To List    ${NOVA-LISTA}    ${item}

        EXCEPT    ERROR:Nenhum item foi adicionado a lista, pois não o item verificado não era número!

        FINALLY
            Log To Console  Elemento adicionado nesta iteração @{NOVA-LISTA}
            Log To Console    ${\n}
        END
            
    END
            Log To Console  Nova Lista: @{NOVA-LISTA}
            Log To Console    ${\n}
        
#${EMPTV} padrão variavel vazia para pular linha 