Feature: Registro de usuario

  Como nuevo usuario de la aplicación
  Quiero registrarme en la plataforma indicando mi rol
  Para acceder a las funcionalidades de CareMe

  Scenario: Registro exitoso de usuario con rol asignado
    Given que el usuario está en la pantalla de registro de la aplicación
    When ingresa sus datos y selecciona su rol
    Then el sistema envía un correo de verificación y asigna el rol correspondiente

  Scenario: Registro con datos incompletos
    Given que el usuario no ha completado los campos obligatorios
    When intenta registrar su cuenta
    Then el sistema muestra un mensaje de error

  Scenario: Registro con correo electrónico ya existente
    Given que el correo ya está registrado
    When el usuario intenta usarlo
    Then el sistema muestra un mensaje indicando que ya está en uso

  Scenario: Registro sin confirmación del correo
    Given que el usuario no confirma su cuenta por correo
    When intenta acceder a la plataforma
    Then el sistema bloquea el acceso hasta que confirme su cuenta

  Scenario: Registro con selección de rol no válida
    Given que el campo de rol está vacío
    When el usuario intenta continuar
    Then el sistema muestra un mensaje de error

  Scenario: Reintentos de registro fallidos
    Given que hay múltiples intentos fallidos de registro
    When se supera el límite
    Then el sistema muestra un mensaje y ofrece contactar con soporte
