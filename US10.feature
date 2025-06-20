Feature: US10 - Llamada directa desde la aplicación

  Como familiar
  Quiero poder realizar una llamada de voz al cuidador desde la app
  Para facilitar la comunicación sin compartir datos personales

  Scenario: Iniciar llamada desde perfil del cuidador
    Given que el familiar visualiza el perfil del cuidador
    When presiona el botón “Llamar”
    Then se inicia una llamada de voz dentro de la app