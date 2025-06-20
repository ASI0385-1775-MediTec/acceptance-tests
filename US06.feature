Feature: US06 - Configuración de notificaciones

  Como usuario de la app
  Quiero configurar las notificaciones que recibo
  Para evitar interrupciones innecesarias y mantenerme informado solo de lo importante.
  
  Scenario: Personalización de alertas
    Given que el usuario accede a configuración
    When elige las notificaciones que desea recibir
    Then el sistema guardará sus preferencias

  Scenario: Activación o desactivación por tipo
    Given que hay distintas categorías de alertas
    When el usuario las activa o desactiva
    Then el sistema solo enviará lo que haya sido permitido