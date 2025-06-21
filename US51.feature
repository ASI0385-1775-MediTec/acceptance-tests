Feature: Modo simplificado para adultos mayores

    Como cuidador o familiar,
    Quiero poder activar un modo de interfaz simplificada,
    Para que el adulto mayor pueda usar funciones básicas de la app con facilidad.

  Scenario: Activación de modo simplificado
    Given que el usuario entra en configuración
    When activa "Modo simplificado"
    Then la interfaz mostrará botones grandes y funciones esenciales

  Scenario: Personalización básica
    Given que el cuidador desea personalizar la interfaz
    When selecciona qué funciones mostrar
    Then el sistema solo mostrará esos elementos seleccionados