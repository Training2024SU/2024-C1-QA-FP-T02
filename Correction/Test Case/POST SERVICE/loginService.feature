Feature: Ingreso de usuario con el servicio POST de Amazon
  Como   Usuario 
  Quiero usar el servicio de ingreso de Amazon 
  Para   ingresar a la plataforma de Amazon

  Background: 
    Given que el usuario está utilizando Postman
    And   está accediendo al servicio de ingreso de Amazon

  @ingreso_exitoso
  @camino_feliz
  Scenario: Ingreso aprovado por credenciales  correctas 
    When el usuario ingresa credenciales válidas
    Then debería recibir un token único de inicio de sesión 
    And  debería recibir una respuesta exitosa
  
  @credenciales_vacias
  @excepcion
  Scenario: Acceso de ingreso rechazado por credenciales vacías 
    When el usuario no ingresa correo electrónico ni contrasena
    Then debería ver un mensaje de error indicando que se requieren las credenciales
    And  no debería recibir un token de inicio de sesión

  @contrasena_incorrecta
  @excepcion
  Scenario: Acceso de ingreso rechazado por contrasena incorrecta
    When el usuario ingresa un correo electrónico válido pero una contraseña incorrecta
    Then debería ver un mensaje de error indicando que la contraseña es incorrecta
    And  no debería recibir un token de inicio de sesión

  @correo_incorrecto
  @excepcion
  Scenario: Acceso de ingreso rechazado por correo incorrecto
    When el usuario ingresa un correo electrónico no registrado en Amazon
    Then debería ver un mensaje de error indicando que el usuario no está registrado
    And  no debería recibir un token de inicio de sesión
