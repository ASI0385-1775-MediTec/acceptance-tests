Feature: US03 - Coordinación automática con centro de salud en emergencias

  Como cuidador durante una emergencia
  Quiero que la app seleccione automáticamente el centro de salud más cercano
  Para agilizar la atención médica del adulto mayor en caso de alguna emergencia.

  Scenario: Activación del botón de emergencia médica
    Given que el cuidador está prestando un servicio
    And ocurre una situación médica urgente
    When pulsa el botón de emergencia en la app
    Then el sistema geolocaliza su posición
    And selecciona el centro de salud más cercano

  Scenario: Confirmación del centro médico asignado
    Given que se ha identificado un centro de salud disponible
    When el sistema conecta con el centro
    Then se muestra al cuidador y al familiar el nombre del centro
    And se indica dirección y tiempo estimado de atención