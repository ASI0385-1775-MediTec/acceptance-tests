Feature: Solicitud de contratación con oferta personalizada

  Como cliente que desea contratar un cuidador
  Quiero que la aplicación me muestre un monto sugerido por el cuidador basado en su experiencia y formación
  Para tener la posibilidad de realizar una oferta personalizada, que el cuidador podrá aceptar, rechazar o proponer una contraoferta.
  
  Scenario: Mostrar monto sugerido
    Given que el cliente ha seleccionado un cuidador y está por contratar
    When el sistema calcula el monto sugerido
    Then lo muestra basado en experiencia, formación y especialidad

  Scenario: Cliente modifica el monto sugerido
    Given que el cliente recibe un monto sugerido
    When decide cambiarlo
    Then puede ingresar un monto personalizado y enviarlo

  Scenario: Cuidador acepta o rechaza oferta
    Given que el cuidador recibe la oferta
    When la revisa
    Then puede aceptar, rechazar o contraofertar

  Scenario: Confirmación de contratación
    Given que ambas partes llegan a un acuerdo
    When se define el monto
    Then el sistema confirma la contratación y notifica a ambas partes
