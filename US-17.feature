Feature: US17 - Desplazarse por los apartados de nuestra landing
Como usuario
Quiero poder desplazarme por los apartados de nuestra landing
Para visualizar la información del servicio

Scenario: Desplazarse al apartado de Inicio
    Given que estoy en la página de la landing
    When hago clic en el apartado "Inicio"
    Then debería ser redirigido al apartado de "Inicio"

Scenario: Desplazarse al apartado de Servicios
    Given que estoy en la página de la landing
    When hago clic en el apartado "Servicios"
    Then debería ser redirigido al apartado de "Servicios"

Scenario: Desplazarse al apartado de Nosotros
    Given que estoy en la página de la landing
    When hago clic en el apartado "Nosotros"
    Then debería ser redirigido al apartado de "Nosotros"

Scenario: Desplazarse al apartado de Contáctanos
    Given que estoy en la página de la landing
    When hago clic en el apartado "Contáctanos"
    Then debería ser redirigido al apartado de "Contáctanos"
