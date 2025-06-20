Feature: Pago seguro y registro de transacciones

  Como familiar que contrata un servicio
  Quiero realizar el pago de manera segura a través de la plataforma y recibir un comprobante
  Para tener respaldo y evitar fraudes

  Scenario: Pago de servicio
    Given que el usuario ha seleccionado un cuidador y agendado un servicio
    When procede al pago
    Then la plataforma debe ofrecer métodos de pago seguros y registrar la transacción

  Scenario: Emisión de comprobante
    Given que el pago ha sido realizado con éxito
    When la transacción se confirme
    Then el sistema enviará un comprobante al correo electrónico del usuario y lo almacenará en su historial de pagos
