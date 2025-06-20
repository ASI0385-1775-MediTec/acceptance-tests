Feature: Historial de servicios previos del cuidador

  Como familiar que desea contratar un cuidador
  Quiero revisar el historial de servicios previos del cuidador
  Para asegurarme de que tiene experiencia y buen desempeño

  Scenario: Visualización del historial del cuidador
    Given que el usuario accede al perfil de un cuidador
    When selecciona “Ver historial”
    Then verá una lista de servicios anteriores con fechas, duración y valoraciones

  Scenario: Ordenamiento por fecha o calificación
    Given que el usuario visualiza el historial
    When elige un criterio de orden
    Then el sistema reorganiza la lista según la opción seleccionada