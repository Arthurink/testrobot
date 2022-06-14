*** Settings ***
Resource    BasePage.robot
Library     String

*** Variables ***
${locatorDiv}    //*[@id="root"]/div
${getText}
${selectorTable}   "#root>div>"

*** Keywords ***
navegar al sitio    
    navegar    https://1v2njkypo4.csb.app/
    Sleep    30s
validar texto tabla estatica
    [Arguments]   ${row}    ${column}
    ${getText}=   obtenerTextoTabla    ${locatorDiv}    ${row}    ${column}
    Return From Keyword    ${getText}
modificarCelda
    [Arguments]    ${row}    ${column}    ${value}
    ${selectorStr}=    Get Substring    ${selectorTable}    1    -1 
    modificarTextoTabla    ${selectorStr}    ${row}    ${column}    ${value}
    

    