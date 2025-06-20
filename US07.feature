Feature: US07 - Reporte de incidente con cuidador

  Como usuario que tuvo un problema
  Quiero poder reportar un incidente ocurrido durante el servicio
  Para que el equipo de soporte lo revise y actúe en consecuencia.

  Scenario: Usuario reporta un incidente luego de un servicio
    Given que el usuario ha finalizado un servicio
    When accede a la opción "Reportar incidente"
    And describe el hecho y adjunta evidencia
    Then el sistema registra el reporte

  Scenario: Seguimiento del reporte por el equipo de soporte
    Given que un reporte ha sido registrado
    When el equipo de soporte lo revisa
    Then el usuario es notificado sobre el estado del caso
    And se informa de las acciones tomadas