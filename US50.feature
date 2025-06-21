Feature: Envío automático de historial médico a servicios de emergencia

    Como usuario que registra información médica en la plataforma,
    Quiero que en caso de emergencia se envíe automáticamente un resumen médico a los servicios de emergencia,
    Para garantizar atención adecuada incluso cuando el paciente no pueda comunicarse.

  Scenario: Activación por botón de pánico
    Given que se presiona el botón de emergencia
    When los servicios médicos son alertados
    Then reciben automáticamente un resumen del historial médico

  Scenario: Control de información compartida
    Given que el usuario configura el perfil médico
    When marca qué información compartir
    Then el sistema solo envía los datos seleccionados en caso de emergencia

  Scenario: Código QR de emergencia
    Given que el adulto mayor tiene un perfil médico
    When se genera un código QR
    Then puede llevarlo consigo para acceso rápido del personal médico

  Scenario: Actualización de datos médicos críticos
    Given que cambian medicamentos o alergias
    When el usuario actualiza su perfil médico
    Then el sistema prioriza estos cambios en la información de emergencia
