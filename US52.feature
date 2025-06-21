Feature: Modo de alto contraste en la app

    Como usuario con baja visión
    Quiero poder activar un modo de alto contraste
    Para visualizar mejor los elementos de la app.

  Scenario: Activación de modo accesible
    Given que el usuario accede a “Configuración de accesibilidad”
    When activa “Modo de alto contraste”
    Then los colores cambiarán a blanco y negro con textos más visibles

  Scenario: Desactivación del modo accesible
    Given que el usuario ya no desea usar el modo
    When lo desactiva
    Then la app volverá a su estilo de colores original