Feature: US19 - Enviar formulario de Contáctanos
Como usuario
Quiero poder enviar un formulario de Contáctanos
Para comunicarme con el equipo del sitio web

Scenario: Envío exitoso del formulario de Contáctanos
    Given que estoy en la página de "Contáctanos"
    When lleno el formulario de contáctanos con la siguiente información <nombre>, <apellidos>, <correo electrónico> y <mensaje>
    And hago clic en el botón "Enviar"
    Then debería ver un mensaje de confirmación "¡Mensaje enviado correctamente!"

    Examples: Input
      | <nombre>   | <Apellidos>     |  <correo electrónico>        | <mensaje>                          |
      | Usuario1   | Usuario1        |  usuario1@example.com        | Hola, quiero hacer una consulta.   |
      | Usuario2   | Usuario1        |  usuario2@example.com        | ¿Cuándo estarán disponibles?       |
    
    Examples: Output
        | ¡Mensaje enviado correctamente! |

Scenario: Envío fallido del formulario de Contáctanos (campos obligatorios no completados)
    Given que estoy en la página de "Contáctanos"
    When dejo los campos del formulario de contáctanos vacíos
    And hago clic en el botón "Enviar"
    Then debería ver un mensaje de error indicando que los campos son obligatorios

    Examples: Input
      | <nombre>   | <Apellidos>     |  <correo electrónico>        | <mensaje>                          |
      | Usuario1   | Usuario1        |  usuario1@example.com        | Hola, quiero hacer una consulta.   |
      | Usuario2   | Usuario1        |  usuario2@example.com        | ¿Cuándo estarán disponibles?      |

    Examples: Output
        | Completar campos obligatorios |