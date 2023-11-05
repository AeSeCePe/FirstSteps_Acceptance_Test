Feature: US13 - Acceder a contenido
Como usuario
Quiero poder acceder al apartado de Comunidades
Para obtener información relevante sobre el desarrollo y cuidado del bebé

Scenario: Acceso al apartado de Comunidades
    Given que estoy en la página principal del sitio web
    When hago clic en el apartado "Comunidades"
    Then debería ser redirigido al apartado de Comunidades

    Examples: Output
      | Redirigido correctamente |
