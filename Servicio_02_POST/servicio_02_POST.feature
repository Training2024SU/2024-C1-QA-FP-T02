Feature: Creación y Testeo de Usuarios mediante Método POST

  @creacion_usuario
  @test_case01
  Scenario: Crear usuario con datos válidos
    Given que estoy en Postman
    When  creo un usuario con parámetros válidos
    Then  se crearía un nuevo usuario con los parámetros establecidos
    And   la respuesta incluiría el nuevo usuario

    | Name      | Job         |
    | "Johan"   | "Lead"      |



  @creacion_usuario
  @test_case02
  Scenario: Crear usuario sin datos
    Given que estoy en Postman
    When  creo un usuario sin parametros
    Then  habria un error indicandome la ausencia de datos
    


  @creacion_usuario
  @test_case03
  Scenario: Crear usuario con datos invalidos
    Given que estoy en Postman
    When  creo un usuario con datos invalidos
    Then  habria un error indicandome el tipo de dato incorrecto
   
    | Name      | Job       |
    | - 1       | 10,2      |



  # Suponiendo que el campo Job esta relacionado con una base de datos 
  # Job 
  # Engineer, Lead, QA, Developer

  @creacion_usuario
  @test_case04
  Scenario: Crear usuario con con nombre valido pero Job no registrado en la base de datos
    Given  que estoy en Postman
    When   creo un usuario con nombre valido 
    And    Job no registrado en la base de datos 
    Then   habria un error indicandome que no existe el campo Job en la BD
   
    | Name      | Job       |
    | "Johan"   | "Manager" |
