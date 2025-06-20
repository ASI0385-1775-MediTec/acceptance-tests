Feature: US08 - Inicio de sesión con autenticación biométrica

  Como usuario frecuente
  Quiero iniciar sesión usando mi huella digital o reconocimiento facial
  Para acceder de forma rápida y segura.

  Scenario: Activación de biometría
    Given que el usuario accede a configuración
    When habilita la opción de autenticación biométrica
    Then podrá usar huella o rostro para ingresar a la app

  Scenario: Fallback con contraseña
    Given que la biometría falla
    When el sistema no reconoce al usuario
    Then se solicitará la contraseña habitual
