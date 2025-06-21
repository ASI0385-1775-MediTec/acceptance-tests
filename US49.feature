Feature: Sistema de costos variables por tipo de cuidado

    Como usuario cuidador,
    Quiero que el sistema calcule automáticamente los costos según el tipo de cuidado requerido y la especialización necesaria,
    Para tener transparencia en la facturación y  que paguen de acuerdo con las necesidades específicas.

  Scenario: Cálculo por especialización
    Given que el usuario selecciona un tipo de cuidado especializado
    When el sistema genera la cotización
    Then muestra tarifas según nivel de especialización

  Scenario: Variación por horarios
    Given que se solicita servicio en horarios especiales
    When se genera el presupuesto
    Then se aplican tarifas adicionales según horario

  Scenario: Descuentos por duración
    Given que el servicio es de larga duración
    When se supera un umbral de horas o días
    Then el sistema aplica descuentos progresivos

  Scenario: Transparencia de costos adicionales
    Given que hay actividades o materiales especiales
    When se añaden al presupuesto
    Then el sistema desglosa claramente los conceptos extras

  Scenario: Comparativa de costos
    Given que el usuario visualiza perfiles de cuidadores
    When desea comparar opciones
    Then el sistema muestra comparativas de costos para el mismo servicio