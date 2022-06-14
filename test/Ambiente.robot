*** Settings ***
Resource   ../pages/AmbientePage.robot

*** Test Cases ***
Feature: buscar google
    Scenario: buscar en google ichigo

*** Keywords ***
Scenario: buscar en google ichigo
    Given Ingresar pagina de google    https://google.com/
    When realizar busqueda en google
    Then validar resultado
    And cerrar el navegador
