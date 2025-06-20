Feature: US15 - Calendario de servicios

  Como cuidador
  Quiero tener un calendario con mis servicios programados
  Para evitar cruces de citas

  Scenario: Visualización de agenda semanal
    Given que accede a su calendario
    When consulta la semana actual
    Then verá todas las reservas confirmadas