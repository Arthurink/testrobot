*** Settings ***
Resource    ../pages/TablePage.robot

*** Keywords ***
navegar a tabla estatica
    navegar al sitio
como usuario valido que el valor de la ${fila} y la ${column} es igual a ${result}
    ${getText}=    validar texto tabla estatica    ${fila}    ${column}
    Should Be Equal    ${getText}    ${result}

como usuario modifico el valor de la ${fila} y la ${column} por el valor ${value}
    modificarCelda   ${fila}    ${column}    ${value}
    Sleep     8s