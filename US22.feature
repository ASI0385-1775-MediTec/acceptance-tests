Feature: Preferencias de cuidado del paciente

  Como familiar del paciente
  Quiero registrar preferencias específicas de cuidado
  Para que el cuidador sepa exactamente cómo tratar a mi ser querido

  Scenario: Registro de preferencias
    Given que el familiar crea el perfil del paciente
    When accede a la sección “Preferencias”
    Then podrá escribir indicaciones médicas, emocionales y personales

  Scenario: Visualización por parte del cuidador
    Given que el cuidador fue asignado
    When accede al perfil del paciente
    Then verá las preferencias ingresadas por el familiar