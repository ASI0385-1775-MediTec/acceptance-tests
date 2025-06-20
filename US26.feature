Feature: Doble autenticación al ingresar

  Como usuario de la app
  Quiero activar la doble autenticación
  Para reforzar la seguridad de mi cuenta

  Scenario: Activación del segundo factor
    Given que el usuario entra a seguridad
    When habilita la autenticación en dos pasos
    Then se le solicitará un código enviado a su correo o celular

  Scenario: Verificación exitosa
    Given que el usuario ingresa el código correctamente
    When completa el proceso
    Then se permitirá el acceso seguro a la cuenta