Feature: US16 - Pago dentro de la app

  Como usuario que contrató un servicio
  Quiero pagar dentro de la app
  Para evitar riesgos o confusiones

  Scenario: Uso de pasarela de pago
    Given que el servicio está confirmado
    When se paga con tarjeta o Yape
    Then se genera comprobante y se registra el pago