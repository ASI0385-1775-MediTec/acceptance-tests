Feature: Gestión de métodos de pago predeterminados

  Como usuario contratador
  Quiero poder agregar, eliminar o seleccionar un método de pago predeterminado
  Para agilizar futuras transacciones y evitar tener que ingresar mis datos de pago cada vez.
  
  Scenario: Agregar nuevo método de pago
    Given que el usuario está en "Métodos de pago"
    When ingresa datos de una tarjeta o app de pago
    Then el sistema agrega el método y lo puede establecer como predeterminado

  Scenario: Eliminar método de pago
    Given que el usuario está en la lista de métodos guardados
    When selecciona uno y lo elimina
    Then el sistema lo elimina de su cuenta

  Scenario: Seleccionar método predeterminado
    Given que hay múltiples métodos guardados
    When el usuario marca uno como “Predeterminado”
    Then ese será usado para futuras transacciones