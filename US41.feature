Feature: Penalización por cancelación repetida

Como cuidador de la plataforma
Quiero que el sistema penalice automáticamente a los usuarios que cancelen dos o más servicios en el mismo día
Para garantizar que los cuidadores no sean afectados por cancelaciones frecuentes y mejorar la experiencia de nuestros usuarios.

  Scenario: Penalización por 2 cancelaciones el mismo día
    Given que un usuario canceló 2 o más servicios en un día
    When el sistema lo detecta
    Then aplica suspensión temporal y notifica al administrador

  Scenario: Notificación al usuario
    Given que se aplica una penalización
    When el sistema suspende al usuario
    Then envía una notificación informando la penalización

  Scenario: Excepción por cancelaciones justificadas
    Given que el usuario justifica cancelaciones
    When el administrador revisa el motivo
    Then puede eliminar la penalización si es válida

  Scenario: Reporte de cancelaciones
    Given que el administrador desea revisar
    When accede al historial del usuario
    Then el sistema muestra fecha, motivo y estado de penalización