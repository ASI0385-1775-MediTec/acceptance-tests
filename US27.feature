Feature: Verificación de credenciales de cuidadores

  Como familiar que busca contratar un cuidador
  Quiero que la plataforma verifique las credenciales y antecedentes de los profesionales registrados
  Para sentirme seguro al contratar sus servicios

  Scenario: Registro de cuidador
    Given que un cuidador se registra en la plataforma
    When sube sus documentos de identidad y certificados
    Then el sistema validará la autenticidad de los documentos antes de activar su perfil

  Scenario: Visualización de estado de verificación
    Given que el cuidador envió sus documentos
    When el sistema haya completado la verificación
    Then se mostrará en el perfil del cuidador un sello de “Verificado”