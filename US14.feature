Feature: Emergencia médica

  Como cuidador
  Quiero tener un botón de emergencia en la app
  Para actuar ante incidentes con el paciente

  Scenario: Activación de emergencia
    Given que ocurre un evento grave
    When el cuidador pulsa el botón
    Then se geolocaliza el lugar y se contacta al centro médico