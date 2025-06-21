Feature: Gestión de acceso temporal a información médica

    Como usuario que contrata servicios ocasionales,
    Quiero poder otorgar acceso temporal a la información médica para cuidadores por periodo específico,
    Para proteger los datos sensibles y revocar permisos automáticamente cuando finalice el servicio.

  Scenario: Configuración de acceso temporal
    Given que el usuario contrata un servicio por tiempo limitado
    When configura acceso con fecha de expiración
    Then el cuidador podrá acceder solo durante ese periodo

  Scenario: Revocación automática de permisos
    Given que el servicio ha finalizado
    When se cumple la fecha de expiración
    Then el sistema revoca automáticamente el acceso del cuidador

  Scenario: Extensión de permisos
    Given que el servicio se extiende
    When el usuario autoriza tiempo adicional
    Then el sistema actualiza el periodo de acceso

  Scenario: Registro de accesos a la información
    Given que el cuidador tiene permisos temporales
    When consulta información médica
    Then el sistema registra fecha, hora y datos consultados
