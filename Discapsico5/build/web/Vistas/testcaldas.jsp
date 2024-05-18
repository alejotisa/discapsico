<!DOCTYPE html><!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body class=" text-bg-light">


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

                        <div class="container">
                            <main>
                                <div class="py-5 text-center">

                                    <h2>TEST DE CALDAS</h2>
                                    <p class="lead">Recuerda responder todas subier la informacion de todas las preguntas para tener un resultado. </p>
                                    
                                </div>

                                <div class="container">

                                    <h2>Formulario para paciente:  <span id="mensaje-bienvenida" style="font-size: 24px; font-weight: bold; color: blue;" ></span></h2>
                                       
                                    
 <form action="/ControladorTestCaldas" method="post" >
     
                                    <h3 class=" mb-5 mt-5">Adherencia al Tratamiento (AT) </h3>

                                    <div class="mb-3">
                                        <label for="pregunta1" class="form-label">1. ¿Sigue otras recomendaciones aparte del manejo farmacológico o psicoterapéutico?</label>
                                        <br>
                                        <div class="btn-group" role="group" aria-label="Pregunta 1">
                                            <input type="radio" class="btn-check" name="pregunta1" value="2"id="pregunta1-no" autocomplete="off" >
                                            <label class="btn btn-outline-success" for="pregunta1-no">No</label>
                                            <input type="radio" class="btn-check" name="pregunta1"value="1" id="pregunta1-si" autocomplete="off">
                                            <label class="btn btn-outline-success" for="pregunta1-si">Sí</label>
                                        </div>
                                        <div class="mb-3">
                                            <label for="pregunta2" class="form-label">2. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                            <br>
                                            <div class="btn-group" role="group" aria-label="Pregunta 2">
                                                <input type="radio" class="btn-check" name="pregunta2" value="2"id="pregunta2-no" autocomplete="off" >
                                                <label class="btn btn-outline-success" for="pregunta2-no">No</label>
                                                <input type="radio" class="btn-check" name="pregunta2"value="1" id="pregunta2-si" autocomplete="off">
                                                <label class="btn btn-outline-success" for="pregunta2-si">Sí</label>
                                            </div>
                                            <div class="mb-3">
                                                <label for="pregunta3" class="form-label">3. ¿Asiste a controles odontológicos?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 3">
                                                    <input type="radio" class="btn-check" name="pregunta3"value="2" id="pregunta3-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta3-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta3" value="1"id="pregunta3-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta3-si">Sí</label>
                                                </div>
                                            </div>
                                            <!-- Pregunta 4 -->
                                            <div class="mb-3">
                                                <label for="pregunta4" class="form-label">4. ¿Para que siga el tratamiento, es necesario que otros se lo recuerden?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 4">
                                                    <input type="radio" class="btn-check" name="pregunta4"value="1" id="pregunta4-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta4-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta4" value="2"id="pregunta4-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta4-si">Sí</label>
                                                </div>


                                            </div>

                                            <!-- Pregunta 5 -->
                                            <div class="mb-3">
                                                <label for="pregunta5" class="form-label">5. ¿Cuida su alimentación?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 5">
                                                    <input type="radio" class="btn-check" name="pregunta5"  value="2" id="pregunta5-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta5-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta5" value="1" id="pregunta5-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta5-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 6 -->
                                            <div class="mb-3">
                                                <label for="pregunta6" class="form-label">6. ¿Cuida su higiene personal?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 6">
                                                    <input type="radio" class="btn-check" name="pregunta6" value="2" id="pregunta6-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta6-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta6" value="1"id="pregunta6-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta6-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 7 -->
                                            <div class="mb-3">
                                                <label for="pregunta7" class="form-label">7. ¿Asiste con la periodicidad programada a los controles?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 7">
                                                    <input type="radio" class="btn-check" name="pregunta7"value="2" id="pregunta7-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta7-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta7" value="1"id="pregunta7-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta7-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 8 -->
                                            <div class="mb-3">
                                                <label for="pregunta8" class="form-label">8. ¿Asiste a procesos de capacitación, como cursos, seminarios, clases?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 8">
                                                    <input type="radio" class="btn-check" name="pregunta8"value="2"id="pregunta8-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta8-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta8"value="1" id="pregunta8-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta8-si">Sí</label>
                                                </div>
                                            </div>
                                            <h3 class="mt-5 mb-5 ">Discapacidad a nivel Personal y Emocional (DPE)</h3>
                                            <!-- Pregunta 9 -->
                                            <div class="mb-3">
                                                <label for="pregunta9" class="form-label">9. ¿Asiste a los programas de promoción y prevención?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 9">
                                                    <input type="radio" class="btn-check" name="pregunta9"value="2" id="pregunta9-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta9-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta9"value="1" id="pregunta9-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta9-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 10 -->
                                            <div class="mb-3">
                                                <label for="pregunta10" class="form-label">10. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 10">
                                                    <input type="radio" class="btn-check" name="pregunta10" value="2"id="pregunta10-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta10-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta10"value="1" id="pregunta10-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta10-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 11 -->
                                            <div class="mb-3">
                                                <label for="pregunta11" class="form-label">11. ¿En los últimos tres meses, ¿se frustra con facilidad?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 11">
                                                    <input type="radio" class="btn-check" name="pregunta11"value="2" id="pregunta11-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta11-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta11"value="1" id="pregunta11-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta11-si">Sí</label>
                                                </div>
                                            </div>
                                            <h3 class="mt-5 mb-5 ">Discapacidad Social (DS)</h3>
                                            <!-- Pregunta 12 -->
                                            <div class="mb-3">
                                                <label for="pregunta12" class="form-label">12. ¿Considera que tiene habilidades manuales o artísticas aparte de las laborales?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 12">
                                                    <input type="radio" class="btn-check" name="pregunta12"value="1" id="pregunta12-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta12-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta12"value="2" id="pregunta12-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta12-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 13 -->
                                            <div class="mb-3">
                                                <label for="pregunta13" class="form-label">13. ¿En los últimos tres meses, ¿es frecuente que se aísle a causa de sus emociones?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 13">
                                                    <input type="radio" class="btn-check" name="pregunta13" value="2"id="pregunta13-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta13-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta13"value="1" id="pregunta13-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta13-si">Sí</label>
                                                </div>
                                            </div>

                                            <!-- Pregunta 14 -->
                                            <div class="mb-3">
                                                <label for="pregunta14" class="form-label">14. ¿Suele buscar ayuda en las personas más cercanas cuando se siente triste o angustiado?</label>
                                                <br>
                                                <div class="btn-group" role="group" aria-label="Pregunta 14">
                                                    <input type="radio" class="btn-check" name="pregunta14" value="2"id="pregunta14-no" autocomplete="off" >
                                                    <label class="btn btn-outline-success" for="pregunta14-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta14" value="1"id="pregunta14-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta14-si">Sí</label>
                                                </div>
                                            </div>

                                            <hr class="my-4">
                                            
                                                <% if (request.getAttribute("error") != null && (Boolean) request.getAttribute("error")) {%>
                            <div class="alert alert-danger">
                                <%= request.getAttribute("mensaje")%>
                            </div>
                            <% } else if (request.getAttribute("mensaje") != null) {%>
                            <div class="alert alert-success">
                                <%= request.getAttribute("mensaje")%>
                            </div>
                            <% }%>

                                            <a href="/Vistas/guardarCambios.jsp" class="w-100 btn btn-primary btn-lg" onclick="calcularSuma()">

                                                Guardar
                                            </a>           

                                            <button  type="button" class="w-100 btn btn-success btn-lg" onclick="calcularSuma()"> Guardar</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </main>

                            <footer class="my-5 pt-5 text-body-secondary text-center text-small">
                                <p class="mb-1">&copy; 2017?2023 Secretaria de salud</p>

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
                        <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

                        <script >
                                                function calcularSuma() {
                                                    let suma = 0;

                                                    // Obtener valores seleccionados y sumarlos
                                                    let actionValor = "TestCaldas";
                                                    let pregunta1Valor = obtenerValorSeleccionado("pregunta1");
                                                    let pregunta2Valor = obtenerValorSeleccionado("pregunta2");
                                                    let pregunta3Valor = obtenerValorSeleccionado("pregunta3");
                                                    let pregunta4Valor = obtenerValorSeleccionado("pregunta4");
                                                    let pregunta5Valor = obtenerValorSeleccionado("pregunta5");
                                                    let pregunta6Valor = obtenerValorSeleccionado("pregunta6");
                                                    let pregunta7Valor = obtenerValorSeleccionado("pregunta7");
                                                    let pregunta8Valor = obtenerValorSeleccionado("pregunta8");
                                                    let pregunta9Valor = obtenerValorSeleccionado("pregunta9");
                                                    let pregunta10Valor = obtenerValorSeleccionado("pregunta10");
                                                    let pregunta11Valor = obtenerValorSeleccionado("pregunta11");
                                                    let pregunta12Valor = obtenerValorSeleccionado("pregunta12");
                                                    let pregunta13Valor = obtenerValorSeleccionado("pregunta13");
                                                    let pregunta14Valor = obtenerValorSeleccionado("pregunta14");

                                                    let subTotalAT = pregunta1Valor + pregunta2Valor + pregunta3Valor + pregunta4Valor + pregunta5Valor + pregunta6Valor + pregunta7Valor + pregunta8Valor;
                                                    let subTotalDPE = pregunta9Valor + pregunta10Valor + pregunta11Valor;
                                                    let subTotalDS = pregunta12Valor + pregunta13Valor + pregunta14Valor;
                                                    let resultadoTotal = subTotalAT + subTotalDPE + subTotalDS;
                                                    console.log("resultadosa8" + " " + subTotalAT + " " + subTotalDPE + " " + subTotalDS + " " + resultadoTotal + " ")

                                                    // Enviar los datos al controlador usando fetch
                                                    fetch('/ControladorTestCaldas', {
                                                        method: 'POST',
                                                        headers: {
                                                            'Content-Type': 'application/json'                                                           
                                                        },
                                                        body: JSON.stringify({  accion:  actionValor,  pregunta1: pregunta1Valor, pregunta2: pregunta2Valor, pregunta3: pregunta3Valor,
                                                            pregunta4: pregunta4Valor, pregunta5: pregunta5Valor, pregunta6: pregunta6Valor,pregunta7: pregunta7Valor,
                                                            pregunta8: pregunta8Valor, pregunta9: pregunta9Valor, pregunta10: pregunta10Valor, pregunta11: pregunta11Valor,
                                                            pregunta12: pregunta12Valor, pregunta13: pregunta13Valor, pregunta14: pregunta14Valor,
                                                            totalAT: subTotalAT, totalDPE: subTotalDPE, totalDS: subTotalDS, sumatoriaTotal: resultadoTotal }),
                                                    })
                                                            .then(response => {
                                                                if (response.ok) {
                                                                    return response.json();
                                                                }
                                                                throw new Error('Error en la respuesta del servidor');
                                                            })
                                                            .then(data => {
                                                                console.log(data); // Manejar la respuesta del servidor
                                                            })
                                                            .catch(error => {
                                                                console.error('Error:', error);
                                                            });
                                                }

                                                function obtenerValorSeleccionado(nombrePregunta) {
                                                    // Obtener todos los botones de opción con el nombre de la pregunta
                                                    let opciones = document.getElementsByName(nombrePregunta);

                                                    // Iterar sobre las opciones para encontrar la seleccionada
                                                    for (let i = 0; i < opciones.length; i++) {
                                                        if (opciones[i].checked) {

                                                            console.log("esta seleccion" + " " + nombrePregunta + " " + opciones[i].value)
                                                            // Devolver el valor seleccionado como un número entero
                                                            return parseInt(opciones[i].value);
                                                        }
                                                    }

                                                    // Si no se seleccionó ninguna opción, devolver 0
                                                    return 0;
                                                }

                        </script>

                        <script src="checkout.js"></script></body>
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

                        </html>


