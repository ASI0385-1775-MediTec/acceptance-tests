Feature: Monitoreo de actividades realizadas

    Como familiar del adulto mayor,
    Quiero recibir reportes de las actividades realizadas durante el servicio,
    Para verificar que se están cumpliendo las tareas asignadas al cuidador.

  Scenario: Registro de actividades
    Given que el cuidador está realizando sus tareas
    When completa una actividad programada
    Then podrá marcarla como completada y añadir observaciones

  Scenario: Notificación de reporte diario
    Given que el servicio del día ha finalizado
    When el cuidador envía el reporte completo
    Then el familiar recibe una notificación con el detalle

  Scenario: Actividades no realizadas
    Given que ciertas actividades no pudieron realizarse
    When el cuidador las marca como "No realizadas"
    Then debe registrar el motivo y se notificará al familiar

  Scenario: Historial acumulado de actividades
    Given que se han completado varios servicios
    When el familiar accede a "Historial de actividades"
    Then verá reportes anteriores y estadísticas de cumplimiento
