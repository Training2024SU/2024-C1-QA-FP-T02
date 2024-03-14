Feature: Estando en la plataforma de Amazon.com crear e ingresar 
como usuario nuevo 
quiero probar el modulo de inicio y registro de Amazon.com
para probar el funcionamiento de ese modulo.

 Background
 Given En la pagina de inicio de Amazon.com 

@Prueba1 @Registrousuarionuevo  @Amazon
  #Pruebacreaciondeususariocondatosincompletos
    Scenario Creacion de usuario nuevo de Amazon con datos incompletos.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de manera incompleta.
      Then El usuario debería visualizar un mensaje de error.

@Prueba2 @Registrousuarionuevo @Amazon
    #Pruebacreaciondeususariocondatosdecualquiercaracter
    Scenario Creacion de usuario nuevo de Amazon con cualquier tipo de caracter en la seccion nombre.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos con diferentes tipos de caracteres.
      Then El usuario debería poder continuar el registro.

@Prueba3 @Registrousuarionuevo  @Amazon
#Pruebacreaciondeususarioconemailsinarroa
    Scenario Creacion de usuario nuevo de Amazon sin el @ en el email
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de email, se cambia el @ con 0 
      Then El usuario debería tener una alerta de email no correcto.


@Prueba4  @Registrousuarionuevo @Amazon
#Prueba creacion de ususario con email sin punto
    Scenario Creacion de usuario nuevo de Amazon sin el punto . en el email
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de email donde no se incluye el punto
      Then El usuario debería tener una alerta de email no correcto.

@Prueba5 @Registrousuarionuevo  @Amazon
  #Prueba creacion de contresena con menos de 6caracteres
    Scenario Creacion de contrasena de usuario con menos de seis caracteres.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de la contrasena con menos de seis caracteres.
      Then El usuario debería tener una alerta de cumplir los requerimientos minimos.

@Prueba6 @Registrousuarionuevo @Registrousuarionuevo @Amazon
  #Validacion de que el formulario requiera la misma contrasena
    Scenario Verificacion de que el formulario solicite la misma contrasena.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa los datos de la contrasena correctamente
      And en la seccion de volver a escribir escribe una contrasena distinta pero con los mismos caracteres.
      Then El usuario debería tener una alerta de que las contrasenas no coinciden.


@Prueba7 @Registrousuarionuevo @Amazon
  #Validacion de que el formulario acepte los datos y envie un correo de confirmacion
    Scenario Verificacion de que el formulario acepte correctamente los datos.
      Given El usuario ingresa a la seccion de creacion de usuario.
      When Ingresa todos los datos de manera correcta
      And verifica los datos.
      Then El usuario debería recibir un codigo de confirmacion en su email.


  @Prueba8 @Iniciodesesion @Amazon
  #Verificar que el formulario solicite los casos de prueba 
    Scenario Verificacion de que el formulario requiera los datos de entrada.
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica sin ingresar ningun dato
      Then El usuario debería recibir una alerta solicitando los datos de entrada.
    
  @Prueba9 @Iniciodesesion @Amazon
  #Verificar de contrasena incorrecta
    Scenario Verificacion de que el formulario la contrasena correcta.
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica su correo correctamente
      But la contrasena incorrecta
      Then El usuario debería recibir una alerta de contrasena incorrecta.

 @Prueba10 @Iniciodesesion @Amazon
  #Verificar que se pueda agregar un numero de telefono como respaldo de seguridad
    Scenario Agregar numero de telefono como respaldo de seguridad,
      Given El usuario ingresa a la seccion de inicio de sesion.
      When Verifica su correo correctamente 
      And verifica la contrasena correctamente
      Then El usuario debería poder agregar un numero de telefono
      And Confirmarlo con un token de seguridad.






