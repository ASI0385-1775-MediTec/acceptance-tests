Feature: Registro automático de incidentes médicos

  Como cuidador
  Quiero que cada vez que se active el botón de emergencia se registre el incidente
  Para tener un historial médico útil para futuros cuidados

  Scenario: Registro de emergencia activada
    Given que se pulsa el botón de emergencia
    When el sistema detecta el evento
    Then se crea automáticamente un registro con fecha, hora y ubicación

  Scenario: Acceso al historial por el familiar
    Given que el familiar accede al perfil del paciente
    When revisa la sección de “Incidentes”
    Then verá una lista con todos los eventos registrados