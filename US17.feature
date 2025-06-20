Feature: Soporte técnico al usuario

  Como usuario de la app
  Quiero poder contactar con soporte cuando tengo un problema
  Para resolverlo rápidamente y continuar con el servicio

  Scenario: Acceso al canal de ayuda desde el menú
    Given que el usuario tiene un problema
    When accede a “Soporte” desde el menú principal
    Then podrá escribir por chat o solicitar una llamada con un agente