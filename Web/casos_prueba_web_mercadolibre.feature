Feature: Creacion de cuenta en  Mercadolibre
 Como cliente nuevo, quiero crear cuenta en Mercadolibre y poder loguearme y poder comprar.

  @Prueba_creacion_de_ususario @P01T01Scenario01
    Background: Tener imagen de cedula frontal y trasera, numero de celular valido y donde
    pueda recibir el codigo de verificacion, correo electronico valido.
    Scenario: Crear cuenta Personal en Mercadolibre Colombia con todos
    datos correctos.
        Given: Ingreso a la pagina de Mercaolibre.com.co
        And: selecciono en "Crea tu cuenta"
        And: Selecciono "Crear cuenta personal"
        When: Ingreso los datos solicitados correctamente 
        Then:Deberiamos de estar ya logueados en la pagina de inicia
        And: ver el nombre en el inico de pantalla


  @Prueba_creacion_de_ususario_contrasena_incorrecta @P01T01Scenario02
        Scenario: Crear cuenta Personal en Mercadolibre Colombia con todos
             datos correctos.
        Given: Ingreso a la pagina de Mercaolibre.com.co
        And: selecciono en "Crea tu cuenta"
        And: Selecciono "Crear cuenta personal"
        When: Ingreso los datos solicitados correctamente 
        And: La contraseña incorrectamente a los requerimientos.
        Then:Deberia de tener un aviso de contrasena no cumple con requisitos
        And: y no poder continuar el Prueba_creacion_de_ususario
    
    
  @Prueba_ingreso @P01T01Scenario03
        Background: Cuenta valida de Mercadolibre, numero de telefono para validacion
        Scenario: Ingresar a Mercadolibre.com.co de manera correcta
        Given: Ingreso a la pagina de Mercaolibre.com.co
        And: selecciono en "Ingresar"
        When: Ingreso los datos solicitados correctamente.
        And Me valido por metodo de codigo al celular 
        Then:Deberiamos de estar ya logueados en la pagina de inicio
        And: ver el nombre en el inico de pantalla


    @Prueba_ingreso_datos_Erroneo @P01T01Scenario04
        Scenario: Ingresar a Mercadolibre.com.co de manera correcta
        Given: Ingreso a la pagina de Mercaolibre.com.co
        And: selecciono en "Ingresar"
        When: Ingreso los datos solicitados incorrectamente. 
        Then:Deberia mostrarme error en los datos 
        And: no dejarme ingresar

    @Prueba_compra_de_producto_con_muchos_articulos @P01T01Scenario05
        Background: Entando logueado en la pagina de Mercadolibre.
        Scenario: Comprar muchas elementos de un solo producto en Mercadolibre.
        Given: Selecciono un producto aleatorio 
        When: Ingreso en catindad 1000 unidades. 
        Then:Deberia mostrarme error no cuenta con stock de productos
        And: no dejarme continuar con la compra


    @Prueba_compra_con_no_cobertura @P01T01Scenario06
        Background: Entando logueado en la pagina de Mercadolibre.
        Scenario: Iniciar el proceso de compra de cualquier producto
               e ingresar un lugar de no acceso .
        Given: Selecciono un cualquier producto
        And: Inicio compra 
        When: Ingreso los datos para en envio 
        And: Ingreso una lugar donde no tengan cobertura 
        Then:Deberia no darme una alerta que no hay correspondencia para ese sitio.

    @Prueba_compra_con_cobertura @P01T01Scenario07
        Background: Entando logueado en la pagina de Mercadolibre.
        Scenario: Iniciar el proceso de compra de cualquier producto e ingresar un lugar de acceso .
        Given: Selecciono un cualquier producto
        And: Inicio compra 
        When: Ingreso los datos para en envio 
        And: Ingreso una lugar donde tengan cobertura 
        Then:Deberia dejarme seguir con el proceso de compra.

     @Prueba_compra_bebida_alcholica_mayor @P01T01Scenario08
   Background: Entando logueado en la pagina de Mercadolibre.
        Scenario: Iniciar el proceso de compra de tequila o bebida alcoholica.
        Given: Selecciono un tequila que es una bebida alcholohica
        When: Intento iniciar y/o continuar con la compra 
        Then:Deberia dejarme comprar.
