Feature: Envío de archivos desde el chat

  Como usuario de la app
  Quiero enviar archivos por el chat
  Para compartir indicaciones médicas o documentos importantes con el cuidador

  Scenario: Envío de archivo en conversación activa
    Given que hay un chat abierto
    When el usuario selecciona un archivo y lo envía
    Then el cuidador lo recibe con una notificación

  Scenario: Visualización del archivo recibido
    Given que el cuidador recibe un archivo
    When lo selecciona
    Then podrá visualizarlo o descargarlo desde la app