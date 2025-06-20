Feature: Búsqueda de cuidadores por filtros avanzados

  Como familiar que necesita contratar un cuidador
  Quiero poder buscar cuidadores por ubicación, disponibilidad y especialización
  Para encontrar al más adecuado según mis necesidades

  Scenario: Filtros aplicados correctamente
    Given que el usuario accede al buscador
    When selecciona filtros específicos (ej. zona, horarios, tipo de cuidado)
    Then el sistema mostrará solo cuidadores que cumplan con los criterios

  Scenario: Resultados ordenados por calificación
    Given que se han aplicado filtros
    When el usuario opta por ordenar por calificación
    Then los cuidadores se mostrarán del más al menos valorado