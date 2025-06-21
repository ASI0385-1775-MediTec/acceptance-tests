Feature: Videollamada programada para entrevista previa

  Como familiar interesado en contratar un cuidador
  Quiero poder realizar una videollamada con el candidato antes de confirmar el servicio
  Para evaluar su idoneidad y establecer una conexión inicial

  Scenario: Programación de entrevista virtual
    Given que el usuario ha preseleccionado un cuidador
    When selecciona "Programar entrevista" y elige fecha y hora disponibles
    Then se enviará una invitación al cuidador y se agendará la videollamada

  Scenario: Notificación previa a la videollamada
    Given que se acerca la hora programada
    When faltan 15 minutos para la entrevista
    Then ambas partes recibirán una notificación con un botón directo para unirse

  Scenario: Grabación opcional de la entrevista
    Given que el usuario desea tener un registro de la entrevista
    When activa la opción "Grabar entrevista" y el cuidador acepta
    Then el sistema guardará la grabación de forma segura y solo accesible para el usuario

  Scenario: Reprogramación de la entrevista
    Given que alguna de las partes no puede asistir a la hora programada
    When solicita reprogramación a través de la plataforma
    Then se notificará a la otra parte y se ofrecerán horarios alternativos