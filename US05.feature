Feature: US05 - Chat en tiempo real entre familiar y cuidador

  Como familiar que ha contratado un servicio
  Quiero poder comunicarme por chat con el cuidador
  Para coordinar detalles o resolver dudas durante el servicio.
  
  Scenario: Inicio de conversación desde el perfil del cuidador
    Given que el servicio ha sido confirmado
    When el usuario accede al perfil del cuidador
    Then podrá iniciar un chat y enviar mensajes en tiempo real

  Scenario: Notificación de nuevos mensajes
    Given que hay mensajes sin leer
    When el usuario abre la app
    Then verá una notificación y podrá acceder al chat directamente