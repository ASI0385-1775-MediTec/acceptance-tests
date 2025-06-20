Feature: Búsqueda de cuidadores por condición médica específica

    Como familiar de un adulto mayor con una condición médica específica,
    Quiero poder filtrar cuidadores según su experiencia con dicha condición,
    Para encontrar al profesional con conocimientos especializados en Alzheimer, Parkinson, diabetes u otras patologías concretas.
 
  Scenario: Filtrado por condición médica específica
    Given que el usuario busca un cuidador para un paciente con Alzheimer
    When selecciona esta condición en los filtros
    Then el sistema muestra perfiles con experiencia certificada

  Scenario: Visualización de credenciales específicas
    Given que existen cuidadores con formación en la condición buscada
    When el sistema muestra los resultados
    Then resalta las certificaciones y experiencia relevante

  Scenario: Búsqueda sin resultados
    Given que no hay cuidadores disponibles
    When se realiza la búsqueda
    Then el sistema informa y sugiere especialidades cercanas