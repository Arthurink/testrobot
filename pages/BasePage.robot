*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
navegar
    [Arguments]     ${url}
    Open Browser    ${url}    Chrome
obtenerTextoTabla
    [Arguments]    ${locatorContenedorTabla}    ${row}    ${column}
    ${celda} =    Get Text    xpath:${locatorContenedorTabla}/table/tbody/tr[${row}]/td[${column}]
    Log To Console    value is ${celda}
    Return From Keyword   ${celda}

modificarTextoTabla
    [Arguments]    ${locatorContenedorTabla}    ${row}    ${column}    ${value}
    Sleep    3s
    Execute JavaScript   document.querySelector('${locatorContenedorTabla}table>tbody>tr:nth-child(${row})>td:nth-child(${column})').innerHTML='${value}'