<!DOCTYPE html><!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class=" text-bg-light">

        <main>

            <div class="container">
                <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                    <a href="/Vistas/home.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
                        <span class="fs-4">DISCAPSICO</span>


                        <ul class="nav nav-pills">
                            <li class="nav-item"><a href="/Vistas/home.jsp" class="nav-link">Home</a></li>
                            <li class="nav-item"><a href="/Vistas/registropaciente.jsp" class="nav-link">Crear Registro</a></li>
                            <li class="nav-item"><a href="/Vistas/consultarRegistro.jsp" class="nav-link">Consultar</a></li>
                            <li class="nav-item"><a href="/Vistas/cerrarSesion.jsp" class="nav-link">Cerrar Sesion</a></li>




                            <div class="row align-items-md-stretch mt-5 ">
                                <div class="col-md-6 mt-2">
                                    <div class="h-100 p-5 text-bg-success rounded-3">
                                        <h2>Gestiona</h2>
                                        
                                        
                                        <p>Bienvenido usuario <span id="mensaje-bienvenida" style="font-size: 24px; font-weight: bold; color: blue;" ></span>! Aqui puedes gestionar ingreso de informacion. Tu contribución es fundamental para brindar un mejor servicio. ¡Gracias por ser parte de nuestro equipo y por tu colaboración!.</p>
                                        <div class="d-grid gap-2">
                                            <a href="/Vistas/registropaciente.jsp" class="btn btn-outline-light btn-lg">
                                                Crear Registro
                                            </a>    

                                            <a href="/Vistas/consultarRegistro.jsp" class="btn btn-outline-light btn-lg">
                                                Consultar Registro
                                            </a>   

                                            <a href="/Vistas/actualizaDatosPaciente.jsp" class="btn btn-outline-light btn-lg">
                                                Editar Registro
                                            </a>   



                                            <a href="/Vistas/borrarRegistro.jsp" class="btn btn-outline-light btn-lg">
                                                Borrar Registro
                                            </a>   

                                        </div>


                                    </div>
                                </div>
                                <div class="col-md-6 mt-2">
                                    <div class="h-100 p-5 text-bg-primary rounded-3">
                                        <h2>Reportes</h2>

                                        <p>Aqui puedes gestionar los reportes  Tu contribución es fundamental para brindar un mejor servicio  ¡Gracias por ser parte de nuestro equipo y por tu colaboración!.</p>
                                        <div class="d-grid gap-2">

                                            <a href="/Vistas/resumenInforrmes.jsp" class="btn btn-outline-light btn-lg">
                                                Resumen
                                            </a>        

                                            <a href="/Vistas/exportar.jsp" class="btn btn-outline-light btn-lg">
                                                Exportar
                                            </a>

                                            <a href="/Vistas/puntajeTestCaldas.jsp" class="btn btn-outline-light btn-lg">
                                                Puntaje Test Caldas
                                            </a>

                                        </div>      
                                    </div>
                                </div>
                            </div>

                            <footer class="pt-3 mt-4 text-body-secondary border-top">
                                &copy; Secretaría Distrital de Salud
                                Cra 32 #12-81 Bogotá, Colombia
                                Teléfono: 601 3649090
                                Código Postal: 0571
                                Consulte los Horarios de Atención
                                Línea Servicio a la ciudadanía: 601 3295090
                                Notificaciones Judiciales
                                Puntos de atención al ciudadano
                                notificacionjudicial@saludcapital.gov.co
                                Políticas de Seguridad de la Información y Términos de Uso del Sitio Web de la Secretaría Distrital de Salud y el Fondo Financiero de Salud
                                Políticas de Protección y Tratamiento de Datos Personales de la Secretaría Distrital de Salud y el Fondo Financiero de Salud
                            </footer>
                            </div>
                            </main>
                            <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
                            <script type="text/javascript">
    // Obtener el nombre del usuario de la sesión
    var nombreUsuario = '<%= session.getAttribute("usuarioName") %>';

    // Comprobar si el nombre del usuario existe
    if (nombreUsuario) {
        // Si el nombre del usuario existe, mostrarlo en la etiqueta <p>
        document.getElementById("mensaje-bienvenida").textContent = nombreUsuario + "!";
    } else {
        // Si el nombre del usuario no existe, manejar el error
        console.error("No hay una sesión válida");
        console.error("No hay una sesión válida: " + nombreUsuario);
        // Aquí puedes agregar el código para manejar el error, como redirigir al usuario a la página de inicio de sesión
    }
</script>


                            </body>
                            </html>