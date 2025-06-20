Feature: Bloqueo temporal de cuenta tras intentos fallidos

  Como usuario que inicia sesión
  Quiero que mi cuenta se bloquee temporalmente después de 5 intentos fallidos de inicio de sesión
  Para proteger mi cuenta de posibles intentos de acceso no autorizado.

  Scenario: Bloqueo exitoso después de 5 intentos fallidos
    Given que el usuario ha ingresado 5 veces sus credenciales incorrectas
    When se superan los 5 intentos fallidos
    Then el sistema debe bloquear temporalmente la cuenta del usuario durante 30 minutos y mostrar un mensaje que informe sobre el bloqueo temporal

  Scenario: Intento de inicio de sesión durante el bloqueo temporal
    Given que la cuenta del usuario está bloqueada temporalmente
    When el usuario intenta iniciar sesión durante el período de bloqueo
    Then el sistema debe mostrar un mensaje informando que la cuenta está bloqueada y que debe esperar el tiempo restante para reintentar

  Scenario: Reintentos después de bloqueo temporal
    Given que el usuario ha esperado el tiempo de bloqueo
    When intenta iniciar sesión después del desbloqueo
    Then el sistema debe permitir el inicio de sesión con las credenciales correctas sin problemas