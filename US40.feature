
Feature: Registro de actividades del cuidador

    Como cliente que desea contratar un cuidador
    Quiero tener la opción de registrar las actividades que debe realizar el cuidador durante su servicio
    Para que realice un mejor cuidado de mi familiar.

  Scenario: Registro de nuevas actividades
    Given que el cliente está en la sección de actividades
    When ingresa una actividad (nombre, hora, nota)
    Then el sistema la registra y muestra en el historial

  Scenario: Visualización del historial
    Given que el cliente ha registrado varias actividades
    When accede al historial
    Then el sistema muestra la lista con detalles y fechas

