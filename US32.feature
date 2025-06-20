Feature: Recordatorio y seguimiento de medicación

  Como cuidador o familiar
  Quiero que la app me recuerde las horas de medicación del adulto mayor y registre su cumplimiento
  Para evitar errores y mejorar la adherencia al tratamiento

  Scenario: Configuración de medicación
    Given que el usuario ingresa los datos de medicación
    When establece horarios y dosis
    Then el sistema guarda la información y programa alertas

  Scenario: Notificación y registro
    Given que es hora de tomar la medicación
    When se activa la alerta
    Then el cuidador recibe la notificación y puede registrar si la dosis fue tomada o no
