Feature: Reportes de actividad de cuidadores

Como administrador del sistema
Quiero generar reportes detallados sobre la actividad de los cuidadores (servicios prestados, calificaciones, cancelaciones)
Para evaluar el desempeño de los cuidadores y tomar decisiones informadas sobre su permanencia en la plataforma.

  Scenario: Reporte de un cuidador específico
    Given que el administrador quiere revisar a un cuidador
    When lo selecciona y solicita el reporte
    Then el sistema genera un reporte con servicios, calificaciones, cancelaciones y horas

  Scenario: Filtro de reportes por fechas
    Given que el administrador selecciona un rango de fechas
    When genera el reporte
    Then el sistema incluye solo datos de ese período

  Scenario: Descarga del reporte
    Given que el administrador ha generado un reporte
    When selecciona descargar
    Then el sistema ofrece PDF o Excel

  Scenario: Error técnico en generación de reporte
    Given que hay un fallo del sistema
    When intenta generar un reporte
    Then muestra mensaje de error y opción para reintentar