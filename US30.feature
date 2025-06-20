Feature: Geolocalización y alertas de seguridad para personas mayores

  Como familiar
  Quiero poder localizar en tiempo real al adulto mayor
  Y recibir alertas si sale de zonas seguras predefinidas
  Para garantizar su seguridad y actuar rápidamente en caso de emergencia

  Scenario: Configuración de zonas seguras
    Given que el familiar configura la app
    When define áreas geográficas seguras (hogar, parque, etc.)
    Then el sistema registra esas zonas para monitoreo

  Scenario: Alerta de salida de zona segura
    Given que el adulto mayor sale de una zona segura
    When el sistema detecta la ubicación fuera del área
    Then envía una alerta inmediata al familiar y cuidador
