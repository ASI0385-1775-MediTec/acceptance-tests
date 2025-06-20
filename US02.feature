Feature: US02 - Calificación del servicio recibido

  Como usuario que contrató un cuidador
  Quiero poder calificar su atención
  Para ayudar a otros usuarios a tomar decisiones informadas.
  
  Scenario: Usuario califica al cuidador
    Given que el servicio ha finalizado
    When el usuario accede a su historial y selecciona "Calificar"
    Then podrá asignar una puntuación de 1 a 5 estrellas
    And podrá dejar un comentario

  Scenario: Visualización de promedio de calificaciones
    Given que un cuidador tiene múltiples valoraciones
    When otro usuario revisa su perfil
    Then se mostrará el promedio actualizado de calificaciones