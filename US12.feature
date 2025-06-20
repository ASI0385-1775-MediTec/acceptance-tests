Feature: Visualización del perfil del cuidador

  Como familiar
  Quiero poder visualizar el perfil del cuidador
  Para tomar una decisión informada

  Scenario: Acceso al perfil completo
    Given que el usuario hace clic en un cuidador
    When visualiza su perfil
    Then verá información detallada, certificados y comentarios de otros usuarios