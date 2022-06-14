*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${locatorBusqueda}    //body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
${locatorButtonBusqueda}    //body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
${locatorResultadoBusqueda}    //*[@id="rso"]/div[3]/div/div/div/div[1]/a/h3

*** Keywords ***
Ingresar pagina de google
    [Arguments]     ${url}
    Open Browser    ${url}    Chrome

realizar busqueda en google
    Input Text  xpath:${locatorBusqueda}    ichigo
    Click Element    xpath:${locatorButtonBusqueda}

validar resultado
    ${texto} =    Get Text    xpath:${locatorResultadoBusqueda}
    Should Be Equal    Ichigo Kurosaki - Wikipedia, la enciclopedia libre    ${texto}

cerrar el navegador
    Close Browser
    
    