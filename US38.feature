Feature: Preguntas frecuentes y guía de uso

  Como usuario que tiene dudas sobre el uso de la plataforma
  Quiero acceder a una sección de Preguntas Frecuentes (FAQ) y una guía interactiva de uso
  Para resolver mis dudas básicas sin necesidad de contactar al soporte técnico.

  Scenario: Acceso a FAQ
    Given que el usuario está navegando en la plataforma
    When selecciona "Preguntas Frecuentes"
    Then el sistema muestra una lista de preguntas comunes y respuestas

  Scenario: Acceso a guía interactiva
    Given que el usuario desea aprender a usar la plataforma
    When selecciona "Guía interactiva"
    Then el sistema muestra tutoriales o pasos guiados

  Scenario: Contacto con soporte tras dudas
    Given que el usuario ha revisado la FAQ y la guía
    When aún tiene dudas
    Then el sistema ofrece opción de contactar soporte vía chat o formulario