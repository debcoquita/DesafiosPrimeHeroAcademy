*** Settings ***
Documentation    Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário
Library    String

*** Variables ***
&{PESSOA1}    
...    nome=Guilherme Bezerra    
...    idade=33 
&{PESSOA2}    
...    nome=Débora Lisboa    
...    idade=26
&{END}    
...     rua=Frei Miguelinho    
...     numero=299    
...     cep=5325813    
...     cidade=Igarassu    
...     Estado=Pernambuco    
...     Complemento=Sitio Viver2 Bl M Ap301

*** Test Cases ***
cenario: exibir dados pessoais no Console
    [tags]    DICIONARIO
    imprimir dados em linhas apartadas
    imprimir na mesma linha


*** Keywords ***
imprimir dados em linhas apartadas
    Log To Console   Nome: ${PESSOA1.nome}    
    Log To Console    Idade: ${PESSOA1.idade}
    Log To Console  Rua: ${END.rua}    
    Log To Console   Número: ${END.numero}  
    Log To Console    CEP: ${END.cep}    
    Log To Console   Cidade: ${END.cidade}    
    Log To Console   Estado: ${END.Estado}    
    Log To Console   Complemento: ${END.Complemento}
imprimir na mesma linha
    Log To Console   Dados da ${PESSOA2}
    Log To Console  Endereço: ${END}

    
