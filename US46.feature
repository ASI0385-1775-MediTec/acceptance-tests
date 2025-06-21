Feature: Texto a voz para interfaz accesible

    Como usuario adulto mayor o con dificultades visuales,
    Quiero poder activar una función de texto a voz en la aplicación,
    Para poder utilizar la plataforma sin necesidad de leer la pantalla.

  Scenario: Activación de lectura automática
    Given que el usuario tiene dificultades visuales
    When activa la función de texto a voz
    Then el sistema leerá automáticamente el contenido visible en pantalla

  Scenario: Control de velocidad de narración
    Given que el usuario está usando la función de texto a voz
    When accede a los ajustes de accesibilidad
    Then podrá modificar la velocidad de narración según su preferencia

  Scenario: Soporte para múltiples idiomas
    Given que el usuario usa la app en otro idioma
    When activa texto a voz
    Then el sistema leerá el contenido en el idioma configurado

  Scenario: Guía de navegación por voz
    Given que la función de texto a voz está activada
    When el usuario navega por una nueva pantalla
    Then el sistema describirá automáticamente los elementos principales