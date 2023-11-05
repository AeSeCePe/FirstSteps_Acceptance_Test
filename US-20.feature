Feature: US20 - Iniciar sesión y registrarse
Como usuario
Quiero poder iniciar sesión y registrarme en el sitio web
Para acceder a las funcionalidades del sitio

Scenario: Creación de cuenta
    Given que estoy en la página de registro
    When lleno el formulario de registro con <email>, <nombre>, <apellidos>, <usuario> y <contraseña>
    And hago clic en el botón "Entrar"
    Then debería ver un mensaje de confirmación <Cuenta creada exitosamente>

    Examples: Input
      | <nombre> | <email>           | <contraseña>     |
      | Usuario1 | usuario1@email.com| contraseña123    |

    Examples: Output
      | Cuenta creada exitosamente  |

Scenario: Inicio de sesión
    Given que estoy en la página de inicio de sesión
    When lleno el formulario de inicio de sesión con <email>, <usuario> y <contraseña>
    And hago clic en el botón "Entrar"
    Then el sistema <redirecciona a la página de inicio>

    Examples: Input
      | <email>             | <contraseña>     |
      | usuario1@email.com  | contraseña123    |
      | usuario2@email.com  | pass123          |

    Examples: Output
      | redirecciona a la página de inicio  |
  