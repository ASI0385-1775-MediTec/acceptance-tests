Feature: Cancelación de servicio contratado

  Como usuario que ha contratado un servicio
  Quiero poder cancelarlo con anticipación
  Para no generar cobros innecesarios si ya no lo necesito

  Scenario: Cancelación dentro del plazo permitido
    Given que el usuario accede al historial de servicios
    When cancela con al menos 24 horas de anticipación
    Then no se generará ningún cargo

  Scenario: Cancelación fuera del plazo permitido
    Given que la cancelación es tardía
    When se hace con menos de 24 horas
    Then se notificará al usuario sobre un posible cobro o penalización