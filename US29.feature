Feature: Creación y seguimiento de planes de cuidado personalizados

  Como familiar o cuidador
  Quiero crear un plan de cuidado personalizado para el adulto mayor
  Que incluya actividades, medicación y citas médicas
  Para organizar mejor su atención diaria

  Scenario: Elaboración del plan
    Given que el usuario accede a la sección de planes de cuidado
    When ingresa datos sobre medicación, actividades y citas
    Then el sistema guardará y mostrará el plan para su consulta

  Scenario: Alertas y seguimiento
    Given que el plan está activo
    When se acerque la hora de una actividad o medicación
    Then el sistema enviará una notificación al cuidador o familiar responsable
