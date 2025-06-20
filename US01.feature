Feature: US01 - Solicitud y confirmación de servicio de cuidado

  Como familiar que necesita contratar un cuidador,
  Quiero poder solicitar un servicio indicando fechas y horas específicas
  Para confirmar la disponibilidad del cuidador y asegurarme de contar con atención adecuada en el momento requerido.
  
  Scenario: Usuario solicita un servicio indicando fecha y hora
    Given que el usuario ha iniciado sesión en la plataforma
    And ha seleccionado un cuidador disponible
    When indica la fecha y hora del servicio
    And envía la solicitud
    Then el sistema registra la solicitud
    And el cuidador recibe una notificación

  Scenario: Cuidador acepta el servicio solicitado
    Given que el cuidador recibió la notificación de solicitud
    When selecciona la opción "Aceptar"
    Then el sistema confirma el servicio
    And notifica al usuario y al cuidador sobre la confirmación

  Scenario: Cuidador rechaza el servicio solicitado
    Given que el cuidador recibió la solicitud
    When selecciona la opción "Rechazar"
    Then el sistema notifica al usuario que deberá elegir otro cuidador