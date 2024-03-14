Feature: Ingreso de usuario con el servicio POST de Amazon

  Background: 
    Given el tester ingresa al servicio de inicio de sesión de Amazon

  @camino_feliz
  Scenario: Ingresar con credenciales correctas
    When el tester proporciona credenciales válidas
    Then debería recibir un token único de inicio de sesión 
    And  debería recibir una respuesta exitosa
  
  @excepcion
  Scenario: Ingresar sin ingresar credenciales
    When el tester no proporciona correo electrónico ni contraseña
    Then debería ver un mensaje de error indicando que se requieren correo electrónico o contraseña
    And  no debería recibir un token de inicio de sesión

  @excepcion
  Scenario: Ingresar con contraseña incorrecta
    When el tester proporciona un correo electrónico válido pero una contraseña incorrecta
    Then debería ver un mensaje de error indicando que la contraseña es incorrecta
    And  no debería recibir un token de inicio de sesión

  @excepcion
  Scenario: Ingresar con datos de un usuario no registrado
    When el tester proporciona un correo electrónico no registrado en Amazon
    Then debería ver un mensaje de error indicando que el usuario no está registrado
    And  no debería recibir un token de inicio de sesión
