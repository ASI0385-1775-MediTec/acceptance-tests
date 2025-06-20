Feature: Revisión de antecedentes del cuidador

  Como usuario que busca confianza
  Quiero que la app muestre si el cuidador pasó revisión de antecedentes
  Para sentirme más seguro al contratar

  Scenario: Indicador de verificación visible
    Given que el cuidador fue validado
    When su perfil es aprobado
    Then aparecerá un sello de “Antecedentes verificados”

  Scenario: Detalle de validación
    Given que el usuario selecciona el sello
    When desea más información
    Then se mostrará la fecha y tipo de revisión realizada