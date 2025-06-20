Feature: Creación y uso de historias de vida

  Como cuidador o profesional de residencia
  Quiero acceder y actualizar la historia de vida del adulto mayor
  Para ofrecer un cuidado centrado en sus gustos, valores y experiencias personales

  Scenario: Acceso a la historia de vida
    Given que el cuidador inicia sesión
    When selecciona un adulto mayor
    Then podrá consultar su historia de vida digitalizada con detalles relevantes

  Scenario: Actualización colaborativa
    Given que familiares y cuidadores desean enriquecer la historia
    When suben fotos, recuerdos o notas
    Then el sistema integra la información para mantener la historia actualizada y accesible
