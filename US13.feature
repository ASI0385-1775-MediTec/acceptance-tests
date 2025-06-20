Feature: Seguimiento del servicio en tiempo real

  Como familiar
  Quiero seguir la ubicación del cuidador durante el servicio
  Para asegurarme del cumplimiento

  Scenario: Inicio del servicio con GPS activo
    Given que el cuidador inicia el servicio
    When habilita el rastreo
    Then el familiar ve su ubicación

  Scenario: Finalización del servicio
    Given que se cumple el horario
    When se marca fin del servicio
    Then se muestra un resumen final