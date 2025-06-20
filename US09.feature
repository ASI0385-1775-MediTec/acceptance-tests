Feature: Recordatorio de servicio programado

  Como usuario cuidador de un servicio
  Quiero recibir un recordatorio previo a la cita
  Para no olvidar la atención pactada

  Scenario: Notificación automática 24 horas antes del servicio
    Given que existe un servicio programado
    And el cuidador está registrado en la plataforma
    When faltan 24 horas para la cita
    Then el sistema envía automáticamente una notificación al cuidador

  Scenario: Confirmación de asistencia desde la app
    Given que el cuidador recibió la notificación de recordatorio
    When accede a la app y abre la notificación
    Then puede confirmar su asistencia o cancelar el servicio