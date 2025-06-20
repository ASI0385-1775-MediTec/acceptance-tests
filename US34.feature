Feature: Inicio de sesión con credenciales

  Como usuario registrado
  Quiero poder iniciar sesión utilizando mis credenciales
  Para acceder a la plataforma y utilizar los servicios según mi rol (cuidador o cliente).
  
  Scenario: Inicio de sesión exitoso con correo electrónico o número telefónico
    Given que el usuario está en la página de inicio de sesión
    When ingresa su correo electrónico y contraseña válidos
    Then el sistema debe autenticarlo correctamente y redirigirlo a la pantalla principal de la plataforma, mostrando su rol

  Scenario: Inicio de sesión exitoso con redes sociales
    Given que el usuario está en la página de inicio de sesión
    When el usuario selecciona la opción para iniciar sesión con una red social y proporciona las credenciales correctas
    Then el sistema debe autenticarlo correctamente y redirigirlo a la pantalla principal de la plataforma

  Scenario: Inicio de sesión con credenciales incorrectas
    Given que el usuario está en la pantalla de registro e ingresa su correo electrónico
    When el sistema detecta que el correo electrónico ya está registrado
    Then el sistema debe mostrar un mensaje de error indicando que el correo electrónico ya está en uso y ofrecer opciones para iniciar sesión o recuperar la cuenta

  Scenario: Intento de inicio de sesión sin ingresar las credenciales
    Given que el usuario está en la página de inicio de sesión
    When el usuario no ingresa ninguna credencial y presiona el botón de “Iniciar sesión”