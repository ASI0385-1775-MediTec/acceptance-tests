Feature: Verificación biométrica para acceso a datos sensibles

  Como usuario que comparte información médica confidencial
  Quiero que el acceso a estos datos requiera verificación biométrica adicional
  Para garantizar que solo personas autorizadas puedan visualizar información sensible del paciente

  Scenario: Protección de datos médicos
    Given que un cuidador intenta acceder al historial médico
    When el sistema solicita autenticación biométrica (huella o rostro)
    Then solo después de validarla correctamente podrá visualizar la información protegida

  Scenario: Registro de intentos de acceso
    Given que se realizan intentos fallidos de acceso a datos sensibles
    When se supera el número máximo de intentos
    Then el sistema notificará al usuario principal y bloqueará temporalmente el acceso a esa información

  Scenario: Alternativa a la biometría
    Given que el dispositivo no cuenta con capacidades biométricas
    When el usuario intenta acceder a información sensible
    Then el sistema ofrecerá un método alternativo de verificación segura (PIN o contraseña temporal)
