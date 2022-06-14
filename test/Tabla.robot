*** Settings ***
Resource    ../steps/TableSteps.robot

*** Test Cases ***
Scenario: obtener valores tabla estatica
    [Template]    Scenario Outline: obtener texto tabla estatica
    #Examples:
    #fila    columna    resultado
    5    3    r: 4, c: 2

Scenario: modificar valores tabla estatica
    [Template]    Scenario Outline: modificar texto tabla estatica
    #Examples:
    #fila    columna    valor
    5    3    modificacion1

*** Keywords ***
Scenario Outline: obtener texto tabla estatica
    [Arguments]    ${fila}    ${column}    ${result}
    Given navegar a tabla estatica
    Then como usuario valido que el valor de la ${fila} y la ${column} es igual a ${result}

Scenario Outline: modificar texto tabla estatica
    [Arguments]    ${fila}    ${column}    ${value}
    Given navegar a tabla estatica
    Then como usuario modifico el valor de la ${fila} y la ${column} por el valor ${value}
