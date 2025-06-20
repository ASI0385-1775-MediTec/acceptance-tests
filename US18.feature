Feature: Registro y verificación del cuidador

  Como cuidador que desea ofrecer sus servicios
  Quiero poder registrarme con mis datos, experiencia y certificaciones
  Para que los usuarios puedan confiar en mi perfil verificado

  Scenario: Registro inicial del cuidador
    Given que el cuidador accede a la app
    When completa sus datos personales, experiencia y sube certificaciones
    Then el sistema guarda la información y marca el perfil como "en verificación"

  Scenario: Verificación del perfil
    Given que el cuidador ha subido sus documentos
    When un moderador los revisa
    Then el perfil es marcado como "verificado" si todo está conforme