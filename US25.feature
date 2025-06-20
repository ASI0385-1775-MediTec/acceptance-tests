Feature: Envío de recordatorios al cuidador

  Como familiar
  Quiero poder enviar recordatorios programados al cuidador
  Para asegurar que cumpla ciertas tareas importantes del servicio

  Scenario: Programación de recordatorio
    Given que el familiar accede al perfil del servicio
    When crea un recordatorio con hora y tarea
    Then el cuidador lo recibirá como una notificación

  Scenario: Confirmación de tarea realizada
    Given que el cuidador realiza la tarea
    When marca “Completado”
    Then el sistema actualizará el estado del recordatorio