Feature: US04 - Notificación automática a familiares sobre emergencia médica

  Como familiar del adulto mayor
  Quiero recibir una notificación inmediata cuando se active una alerta médica
  Para estar informado del estado y ubicación de mi ser querido.

  Scenario: Envío de notificación en caso de emergencia
    Given que se activó la alerta médica
    When el sistema registra la emergencia
    Then enviará una notificación al familiar registrado con ubicación en tiempo real

  Scenario: Seguimiento del traslado al centro médico
    Given que se solicitó una ambulancia
    When el traslado está en curso
    Then el familiar podrá visualizar la ruta y llegada al centro médico desde su app