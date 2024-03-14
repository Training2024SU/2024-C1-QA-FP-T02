Feature: Creación de cuenta en Mercadolibre
  Yo como usuario no registrado en la plataforma de Mercadolibre
  quiero crear una nueva cuenta
  para poder acceder a los servicios de compra de esta empresa

    Background:
      Given el usuario se encuentra en la pagina de inicio Mercaolibre.com.co

  @Prueba_creacion_de_ususario
    #P01T01Scenario01
    Scenario: Crear cuenta Personal en Mercadolibre Colombia con los datos correctos
        When Se ingresan los datos solicitados correctamente
        Then Deberia de loguear en la pagina de inicio
        And Se veria el nombre registrado en el area de usuario


  @Prueba_creacion_de_ususario_contrasena_incorrecta
  #P01T01Scenario02
        Scenario: Crear cuenta Personal en Mercadolibre Colombia con una contraseña no valida
          When Se ingresan los datos solicitados correctamente
          And La contraseña incorrectamente a los requerimientos
          Then Deberia de tener un aviso de contrasena no cumple con requisitos


    Background:
      Given el usuario se encuentra en la pagina de inicio de sesión de Mercadolibre

  @Prueba_ingreso
  #P01T01Scenario03
        Scenario: Ingresar a Mercadolibre.com.co de manera correcta
          When Ingresa los datos solicitados correctamente
          And se valida por metodo de codigo al celular
          Then Deberia de estar ya logueado en la pagina de inicio
          And se veria el nombre en el inico de pantalla

  @Prueba_ingreso_datos_Erroneo
  #P01T01Scenario04
        Scenario: Intentar ingresar a Mercadolibre.com.co de manera incorrecta
          When Ingreso los datos solicitados incorrectamente.
          Then Deberia mostrar un mensaje de error en los datos
          And no se permitiria el ingreso


    Background:
      Given que el usuario se encuentra logueado en la pagina de Mercadolibre

   @Prueba_compra_de_producto_con_muchos_articulos
   #P01T01Scenario05
        Scenario: Comprar una cantidad de un elemento superior al stock en Mercadolibre.
          When Se selecciona un producto con una catindad 1000 unidades confirmando la compra
          Then Deberia mostrar el error "no cuenta con stock suficiente"
          And no se deberia continuar con la compra


  @Prueba_compra_con_no_cobertura
  #P01T01Scenario06
        Scenario: Iniciar el proceso de compra de un producto ingresando un lugar sin acceso
          When Se selecciona un producto confirmando la compra
          And se ingresa un lugar donde no tiene cobertura
          Then Deberia mostrar una alerta notificando que no hay correspondencia para ese sitio.

  @Prueba_compra_con_cobertura
  #P01T01Scenario07
        Scenario: Iniciar el proceso de compra de cualquier producto e ingresar un lugar con acceso .
          When Se selecciona un pronducto confirmando compra
          And Se ingresa una lugar donde tiene cobertura
          Then Deberia permitir el proceso de compra

  @Prueba_compra_bebida_alcholica_mayor
    #P01T01Scenario08
        Scenario: Iniciar el proceso de compra de tequila o bebida alcoholica
          When se inicia la compra de tequila
          And se continua con la compra
          Then Deberia dejarme comprar
