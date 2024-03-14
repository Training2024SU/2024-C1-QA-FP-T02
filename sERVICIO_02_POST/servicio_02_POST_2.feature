Feature: Pruebas de registro con el servicio POST
  Yo como usuario no registrado de mercado libre
  quiero crear un nuevo usuario mendiante el metodo POST
  para probar las funcinalidades del servicio de la API

  Background:
    Given que el usuario se encuentra en Postman conectado al servicio

  @creacion_usuario
  #test_case01
  Scenario: Crear usuario con datos válidos
    When  se crea un usuario con parámetros válidos
    Then  se crearía un nuevo usuario con los parámetros establecidos
    And   la respuesta incluiría el nuevo usuario

      | Name    | Job    |
      | "Johan" | "Lead" |


  @creacion_usuario
  #test_case02
  Scenario: Crear usuario sin datos
    When  creo un usuario sin parametros
    Then  deberia mostrar una respuesta de error indicando la ausencia de datos


  @creacion_usuario
  #test_case03
  Scenario: Crear usuario con datos invalidos
    When  creo un usuario con datos invalidos
    Then  deberia haber un mensaje de error mostrando el tipo de dato incorrecto

      | Name | Job  |
      | - 1  | 10,2 |


  # Se presupone que el campo Job esta relacionado con una base de datos
  # Job
  # Engineer, Lead, QA, Developer

  @creacion_usuario
  #test_case04
  Scenario: Crear usuario con con nombre valido pero Job no registrado en la base de datos
    When   creo un usuario con nombre valido
    And    Job no esta registrado en la base de datos
    Then   habria una respuesta de error indicando que no existe el campo Job en la BD

      | Name    | Job       |
      | "Johan" | "Manager" |
