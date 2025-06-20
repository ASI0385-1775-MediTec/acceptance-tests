Feature: Recuperación de cuenta

  Como usuario que ha olvidado su contraseña
  Quiero poder recuperar el acceso a mi cuenta 
  Para poder restablecer mi contraseña y acceder nuevamente a la plataforma.

  Scenario: Recuperación mediante correo electrónico
    Given que el usuario ha olvidado su contraseña
    When selecciona la opción “Recuperar contraseña” e ingresa su correo electrónico
    Then el sistema debe enviar un enlace de restablecimiento al correo electrónico

  Scenario: Recuperación mediante número telefónico
    Given que el usuario ha olvidado su contraseña y tiene un número telefónico asociado
    When selecciona “Recuperar contraseña” e ingresa su número telefónico
    Then el sistema debe enviar un código de verificación para permitir la recuperación

  Scenario: Correo o número no registrado
    Given que el usuario ha olvidado su contraseña
    When ingresa un correo o número no registrado
    Then el sistema muestra mensaje indicando que no está asociado a una cuenta y ofrece registrarse

  Scenario: Error en recuperación de contraseña
    Given que el usuario recibió un enlace de recuperación
    When el enlace es inválido o caducado
    Then el sistema debe mostrar un mensaje de error y permitir solicitar uno nuevo
