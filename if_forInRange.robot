*** Settings ***
Documentation    Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline

*** Variables ***
${PARES} 
${resultado}

*** Test Cases ***
imprimindo numeros Pares
    [Tags]    CONTANDO
    exercicio dos numeros
    
*** Keywords ***
contando Pares
    ${PARES}    Evaluate    ${PARES}+1
    Set Test Variable       ${PARES}
exercicio dos numeros
#Se cont for divisivel por 2 imprimi no console
    FOR     ${COUNT}     IN RANGE     0    11
        IF     ${COUNT}%2 == 0        contando Pares
    END
    Log To Console        Quantidade de números pares é: ${PARES} 
    Log To Console    ${\n}
    
#Se cont for divisivel por 2 imprimi no console
#o FOR IN RANGE  funciona FOR variavel local IN RANGE onde vai começar a contagem e onde vai terminar 
#lembrando que se inicia um numero depois e finaliza um numero antes
#Usamos quando sabe onde começa e onde termina
