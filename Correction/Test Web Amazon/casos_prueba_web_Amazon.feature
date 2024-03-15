Feature:Registro e inicio de sesion en la plataforma de Amazon 
Estando en la plataforma de Amazon.com
como usuario nuevo 
quiero probar el modulo de inicio y registro de Amazon.com
para hacer uso de las funcionalidades de la plataforma.

 Background
 Given El usuario esta en la pagina de inicio de Amazon.com 

@Registrousuarionuevofallido  @Amazon
@Excepcion
    Scenario El usuario trata de crear cuenta con datos incompletos y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de manera incompleta.
      Then El usuario debería visualizar un mensaje de error.

@Registrousuarionuevoexitoso @Amazon
#En esta seccion solo prueba la seccion de nombre con diferentes caracteres tales como @#?>
    Scenario El usuario intenta crear una nueva cuenta con cualquier tipo de caracter en la seccion nombre.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos con diferentes tipos de caracteres.
      Then El usuario debería poder continuar el registro.

@Registrousuarionuevofallido  @Amazon

    Scenario El usuario intenta crear su nueva cuenta sin el @ en el email y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de email, se cambia el @ con 0 
      Then El usuario debería tener una alerta de email no correcto.


@Registrousuarionuevofallido @Amazon
@Excepcion
    Scenario El usuario intenta crear su nueva cuenta sin el punto . en el email y falla
      Given El usuario ingresa a la seccion de creacion de usuario
      When Ingresa los datos de email donde no se incluye el punto
      Then El usuario debería tener una alerta de email no correcto.

@Registrousuarionuevofallido @Amazon
@Excepcion
    Scenario  El usuario intenta crear su nueva cuenta con la contrasena con menos de seis caracteres y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de la contrasena con menos de seis caracteres.
      Then El usuario debería tener una alerta de cumplir los requerimientos minimos.

@Registrousuarionuevofallido @Amazon
@Excepcion
    Scenario  El usuario intenta crear su nueva cuenta con contrasenas diferentes y falla.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de la contrasena correctamente
      And valida la contrasena escribiendo una contrasena distinta.
      Then El usuario debería tener una alerta de que las contrasenas no coinciden.


 @Registrousuarionuevoexitoso @Amazon

    Scenario El usuario crea una nueva cuenta de manera correcta.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa todos los datos de manera correcta
      And verifica los datos.
      Then El usuario debería recibir un codigo de confirmacion en su email.


@Iniciodesesionfallido @Amazon
@Excepcion
    Scenario El usuario intenta ingresar sin escribir los datos de entrada y falla.
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica sin ingresar ningun dato
      Then El usuario debería recibir una alerta solicitando los datos de entrada.
    
 @Iniciodesesionfallido @Amazon
 @Excepcion
    Scenario El usuario intenta ingresar con la contrasena incorrecta y falla.
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica su correo correctamente
      But la contrasena incorrecta
      Then El usuario debería recibir una alerta de contrasena incorrecta.

@Iniciodesesionexistoso @Amazon
    Scenario El usuario agrega numero de telefono como respaldo de seguridad exitosamente
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica su correo correctamente 
      And verifica la contrasena correctamente
      Then El usuario debería poder agregar un numero de telefono
      And Confirmarlo con un token de seguridad.






