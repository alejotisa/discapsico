<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
            .header-bg {
                background-color: #008080; /* Azul claro */
                height: 140px;
                border-radius: 10px; /* Redondear esquinas */
            }

            .header-content {
                color: white; /* Cambiamos el color del texto a blanco */
                background-color: #008080; /* Color hueso más claro */
                padding: 20px;
                border-radius: 10px; /* Redondear esquinas */
            }

            .discapsico-bg {
                background-color: #40E0D0; /* Turquesa oscuro */
                padding: 10px 20px;
                border-radius: 10px;
            }

            .footer-contacts {
                display: flex;
                justify-content: space-around;
                align-items: center;
                margin-top: 20px;
            }

            .footer-contacts a {
                color: #000;
                text-decoration: none;
                display: flex;
                align-items: center;
            }

            .footer-contacts a .fa {
                margin-right: 10px;
            }

            .social-icons {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
            }

            .social-icons a {
                margin: 0 10px;
                color: #000;
                text-decoration: none;
                align-items: center;
                font-size: 24px;
            }

            .nav-link-white {
                color: white !important;
            }
            .nav-link-green {
                color: green !important; /* Cambiamos el color del texto a verde */
            }

            .social-icons a:hover {
                color: #007BFF;
            }
        </style>
    </head>
    <body class="text-bg-light">
        <main>
            <div class="container-fluid">
                <header class="d-flex flex-column justify-content-center py-3 mb-4 header-bg">
                    <div class="header-content d-flex flex-wrap justify-content-between align-items-center">
                        <a href="/Vistas/home.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                            <div class="discapsico-bg">
                                <span class="fs-4">DISCAPSICO</span>
                            </div>
                        </a>
                        <ul class="nav nav-pills">
                            <li class="nav-item"><a href="/Vistas/home.jsp" class="nav-link nav-link-white">Home</a></li>
                            <li class="nav-item"><a href="/Vistas/registropaciente.jsp" class="nav-link nav-link-white">Crear Registro</a></li>
                            <li class="nav-item"><a href="/Vistas/consultarRegistro.jsp" class="nav-link nav-link-white">Consultar</a></li>
                            <li class="nav-item"><a href="/Vistas/cerrarSesion.jsp" class="nav-link nav-link-white">Cerrar Sesión</a></li>
                        </ul>
                    </div>
                </header>

                            <div class="container">
                                <main>
                                    <div class="py-5 text-center">

                                        <h3>BORRAR REGISTRO </h3>
                                        <p class="lead">No podras recuperar la informacion despues de borrar registros  </p>



                                        <div class="container mt-5 mb-5 px-0">
                                            <div class="card">
                                                <div class="card-body text-bg-danger">
                                                    <h5 class="card-title text-start">Busque El Paciente Para Borrar</h5>
                                                    <p class="text-start">Aqui puedes gestionar las busquedas de los pacientes por numero de cedula para borrar los registros.</p>

                                                    <% if (request.getAttribute("error") != null && (Boolean) request.getAttribute("error")) {%>
                                                    <div class="alert alert-danger">
                                                        <%= request.getAttribute("mensaje")%>
                                                    </div>
                                                    <% } else if (request.getAttribute("mensaje") != null) {%>
                                                    <div class="alert alert-success">
                                                        <%= request.getAttribute("mensaje")%>
                                                    </div>
                                                    //                                                <% }%>


                                                    <form action="/ControladorRegistroPaciente" method="post" >
                                                        <div class="input-group mb-3">
                                                            <input type="text" class="form-control" placeholder="Cedula..." aria-label="Buscar" aria-describedby="basic-addon2" name="txtnumDocumento"  >
                                                            <button type="submit" name="accion" value="ConsultarEliminarRegistroPaciente" class="btn btn-success btn">
                                                                <i class="fas fa-save "></i> Buscar</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="container">

                                        <form action="/Controlad" method="post" >

                                            <div class="col-md-12 col-lg-11">
                                                <h3 class="mb-3">DATOS PACIENTE.  </h3>
                                                <p class="mb-3">Numero de Documento: ${registropaciente.numDocumento}      </p>
                                                <form class="needs-validation" novalidate>
                                                    <div class="row justify-content-center">
                                                        <div class="row g-3">
                                                            <div class="col-md-3">
                                                                <label for="firstName" class="form-label">Primer Nombre</label>
                                                                <p>${registropaciente.primerNombre}</p>

                                                                <div class="invalid-feedback">
                                                                    Valid first name is required.
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="lastName" class="form-label">Segundo Nombre</label>
                                                                <p>${registropaciente.segundoNombre}</p>

                                                                <div class="invalid-feedback">
                                                                    Valid last name is required.
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <label for="firstName" class="form-label">Primer Apellido</label>
                                                                <p>${registropaciente.primerApellido}</p>

                                                                <div class="invalid-feedback">
                                                                    Valid first Apellido is required.
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <label for="firstName" class="form-label">Segundo Apellido</label>
                                                                <p>${registropaciente.segundoApellido}</p>

                                                                <div class="invalid-feedback">
                                                                    Valid first name is required.
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <label for="country" class="form-label">Tipo Identificación</label>
                                                                <p>${registropaciente.idTipoDocumento}</p>

                                                                <div class="invalid-feedback">
                                                                    Please select a valid Tipo Identificación.
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="address" class="form-label">Numero de Identificación</label>
                                                                <p>${registropaciente.numDocumento}</p>
                                                                <div class="invalid-feedback">
                                                                    Please enter your Numero de Identificación.
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="address" class="form-label">Celular</label>
                                                                <p>${registropaciente.numCelular}</p>
                                                                <div class="invalid-feedback">
                                                                    Please enter your Celular.
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="address2" class="form-label">Telefono <span class="text-body-secondary">(Optional)</span></label>
                                                                <p>${registropaciente.numTelefono}</p>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <label for="email" class="form-label">Email <span class="text-body-secondary">(Correo)</span></label>
                                                                <p>${registropaciente.email}</p>


                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="state" class="form-label">Localidad</label>
                                                                <p>${registropaciente.localidad}</p>
                                                                <div class="invalid-feedback">
                                                                    Please provide a valid Localidad.
                                                                </div>
                                                            </div>


                                                            <div class="col-md-3">
                                                                <label for="address" class="form-label">Dirección</label>
                                                                <p>${registropaciente.direccion}</p>
                                                                <div class="invalid-feedback">
                                                                    Please enter your Dirección.
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="address" class="form-label">Barrio</label>
                                                                <p>${registropaciente.barrio}</p>
                                                                <div class="invalid-feedback">
                                                                    Please enter your Barrio.
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <label for="state" class="form-label">UPZ</label>
                                                                <p>${registropaciente.upz}</p>
                                                                <div class="invalid-feedback">
                                                                    Please provide a valid Localidad.
                                                                </div>
                                                            </div>

                                                            <hr class="my-4">


                                                            <h3>DATOS TEST DE CALDAS</h3>


                                                        
                                                            <h4 class=" mb-5 mt-5">Adherencia al Tratamiento (AT) </h4>

                                                            <div class="mb-3">
                                                                <label for="pregunta1" class="form-label">1. ¿Sigue otras recomendaciones aparte del manejo farmacológico o psicoterapéutico?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 1">
                                                                    <input type="radio" class="btn-check" name="pregunta1" value="2" id="pregunta1-no" autocomplete="off" >
                                                                    <label class="btn btn-outline-success" for="pregunta1-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta1" value="1" id="pregunta1-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta1-si">Sí</label>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="pregunta2" class="form-label">2. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                                    <br>
                                                                    <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 2">
                                                                        <input type="radio" class="btn-check" name="pregunta2" value="2" id="pregunta2-no" autocomplete="off" >
                                                                        <label class="btn btn-outline-success" for="pregunta2-no">No</label>
                                                                        <input type="radio" class="btn-check" name="pregunta2" value="1" id="pregunta2-si" autocomplete="off">
                                                                        <label class="btn btn-outline-success" for="pregunta2-si">Sí</label>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="pregunta3" class="form-label">3. ¿Asiste a controles odontológicos?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 3">
                                                                            <input type="radio" class="btn-check" name="pregunta3" value="2" id="pregunta3-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta3-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta3" value="1" id="pregunta3-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta3-si">Sí</label>
                                                                        </div>
                                                                    </div>
                                                                    <!-- Pregunta 4 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta4" class="form-label">4. ¿Para que siga el tratamiento, es necesario que otros se lo recuerden?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 4">
                                                                            <input type="radio" class="btn-check" name="pregunta4" value="1" id="pregunta4-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta4-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta4" value="2" id="pregunta4-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta4-si">Sí</label>
                                                                        </div>


                                                                    </div>

                                                                    <!-- Pregunta 5 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta5" class="form-label">5. ¿Cuida su alimentación?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 5">
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
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 6">
                                                                            <input type="radio" class="btn-check" name="pregunta6" value="2" id="pregunta6-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta6-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta6" value="1" id="pregunta6-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta6-si">Sí</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 7 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta7" class="form-label">7. ¿Asiste con la periodicidad programada a los controles?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 7">
                                                                            <input type="radio" class="btn-check" name="pregunta7" value="2" id="pregunta7-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta7-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta7" value="1" id="pregunta7-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta7-si">Sí</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 8 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta8" class="form-label">8. ¿Asiste a procesos de capacitación, como cursos, seminarios, clases?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 8">
                                                                            <input type="radio" class="btn-check" name="pregunta8" value="2" id="pregunta8-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta8-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta8" value="1" id="pregunta8-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta8-si">Sí</label>
                                                                        </div>
                                                                    </div>
                                                                    <h4 class="mt-5 mb-5 ">Discapacidad a nivel Personal y Emocional (DPE)</h4>
                                                                    <!-- Pregunta 9 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta9" class="form-label">9. ¿Asiste a los programas de promoción y prevención?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 9">
                                                                            <input type="radio" class="btn-check" name="pregunta9" value="2" id="pregunta9-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta9-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta9" value="1" id="pregunta9-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta9-si">Sí</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 10 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta10" class="form-label">10. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 10">
                                                                            <input type="radio" class="btn-check" name="pregunta10" value="2" id="pregunta10-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta10-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta10" value="1" id="pregunta10-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta10-si">Sí</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 11 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta11" class="form-label">11. ¿En los últimos tres meses, ¿se frustra con facilidad?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 11">
                                                                            <input type="radio" class="btn-check" name="pregunta11" value="2" id="pregunta11-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta11-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta11" value="1" id="pregunta11-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta11-si">Sí</label>
                                                                        </div>
                                                                    </div>
                                                                    <h4 class="mt-5 mb-5 ">Discapacidad Social (DS)</h4>
                                                                    <!-- Pregunta 12 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta12" class="form-label">12. ¿Considera que tiene habilidades manuales o artísticas aparte de las laborales?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 12">
                                                                            <input type="radio" class="btn-check" name="pregunta12" value="1" id="pregunta12-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta12-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta12" value="2" id="pregunta12-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta12-si">Sí</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 13 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta13" class="form-label">13. ¿En los últimos tres meses, ¿es frecuente que se aísle a causa de sus emociones?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 13">
                                                                            <input type="radio" class="btn-check" name="pregunta13" value="2" id="pregunta13-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta13-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta13" value="1" id="pregunta13-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta13-si">Sí</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 14 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta14" class="form-label">14. ¿Suele buscar ayuda en las personas más cercanas cuando se siente triste o angustiado?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 14">
                                                                            <input type="radio" class="btn-check" name="pregunta14" value="2" id="pregunta14-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta14-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta14" value="1" id="pregunta14-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta14-si">Sí</label>
                                                                        </div>
                                                                    </div>
                                                                    <hr>   
                                                                        
                                                            </div>



                                                               <div class="row">
                                                                        <div class="py-5 text-center">
                                                                            <h2 class="mb-5 mt-5">PUNTAJE</h2>
                                                                            <div class="col-md-2"></div>
                                                                            <div class="col-md-12">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <h4 class="mb-5 mt-5"> Adherencia al Tratamiento  (AT) </h4>
                                                                                        <!-- Agrega espacio para el puntaje -->
                                                                                        <div class="form-group">
                                                                                            <input type="text" class="form-control" placeholder="Puntaje AT" required>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4">
                                                                                        <h4 class="mt-5 mb-5">Discapacidad a nivel Personal y Emocional (DPE)</h4>
                                                                                        <!-- Agrega espacio para el puntaje -->
                                                                                        <div class="form-group">
                                                                                            <input type="text" class="form-control" placeholder="Puntaje DPE" required>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4">
                                                                                        <h4 class="mt-5 mb-5">Discapacidad a nivel Social (DS)</h4>
                                                                                        <!-- Agrega espacio para el puntaje -->
                                                                                        <div class="form-group">
                                                                                            <input type="text" class="form-control" placeholder="Puntaje DS" required>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <h4 class="mt-5 mb-5">TOTAL</h4>
                                                                                <!-- Agrega espacio para el puntaje total -->
                                                                                <div class="form-group">
                                                                                    <input type="text" class="form-control" placeholder="Puntaje Total" required>
                                                                                </div>
                                                                            </div>
                                                                    <div class="col-md-2"></div>
                                                                </div>
                                                                <hr class="my-4">


                                                                <div class="container">
                                                                    <div class="row justify-content-center">
                                                                        <div class="col-md-12">
                                                                            <div class="recuadro">
                                                                                <h2 class="text-center">Tabla de Puntajes - Niveles de Riesgo</h2>
                                                                                <table class="table table-bordered">
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th class="importancia-alta">Categoría</th>
                                                                                            <th class="importancia-alta">Sin riesgo</th>
                                                                                            <th class="importancia-media">Bajo riesgo</th>
                                                                                            <th class="importancia-media">Riesgo moderado</th>
                                                                                            <th class="importancia-baja">Riesgo alto</th>
                                                                                            <th class="importancia-baja">Riesgo muy alto</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td class="importancia-alta">Adherencia al Tratamiento (AT)</td>
                                                                                            <td class="importancia-alta">8 puntos</td>
                                                                                            <td class="importancia-media">8-12 puntos</td>
                                                                                            <td class="importancia-media">13-15 puntos</td>
                                                                                            <td class="importancia-baja">Superior a 15 puntos</td>
                                                                                            <td class="importancia-baja">-</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="importancia-alta">Discapacidad Personal y Emocional (DPE)</td>
                                                                                            <td class="importancia-alta">3 puntos</td>
                                                                                            <td class="importancia-media">4 puntos</td>
                                                                                            <td class="importancia-media">5 puntos</td>
                                                                                            <td class="importancia-baja">6 puntos</td>
                                                                                            <td class="importancia-baja">-</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="importancia-alta">Discapacidad Social (DS)</td>
                                                                                            <td class="importancia-alta">3 puntos</td>
                                                                                            <td class="importancia-media">4 puntos</td>
                                                                                            <td class="importancia-media">5 puntos</td>
                                                                                            <td class="importancia-baja">Superior a 6 puntos</td>
                                                                                            <td class="importancia-baja">-</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="importancia-alta">Total</td>
                                                                                            <td class="importancia-alta">15 puntos</td>
                                                                                            <td class="importancia-media">16-18 puntos</td>
                                                                                            <td class="importancia-media">19-21 puntos</td>
                                                                                            <td class="importancia-baja">22-24 puntos</td>
                                                                                            <td class="importancia-baja">Superior a 24 puntos</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div id="mensaje" style="display: none;"></div>

                                                        <% if (request.getAttribute("errorDelet") != null && (Boolean) request.getAttribute("errorDelet")) {%>
                                                        <div class="alert alert-danger">
                                                            <%= request.getAttribute("mensajeDelet")%>
                                                        </div>
                                                        <% } else if (request.getAttribute("mensajeDelet") != null) {%>
                                                        <div class="alert alert-success">
                                                            <%= request.getAttribute("mensajeDelet")%>
                                                        </div>
                                                        //                                                <% }%>

                                                        <a href="#" class="w-100 btn btn-danger btn-lg" onclick="eliminar('${registropaciente.numDocumento}')">Borrar</a>

                                                </form>


                                            </div>



                                            </main>

                                            <footer class="pt-3 mt-4 text-body-secondary border-top">
                        <  <div class="container top text-center d-flex justify-content-center align-items-center">
                            <ul class="nav nav-pills">
                                <li class="nav-item"><a href="/Vistas/home.jsp" class="nav-link nav-link-green">Home</a></li>
                                <li class="nav-item"><a href="/Vistas/registropaciente.jsp" class="nav-link nav-link-green">Crear Registro</a></li>
                                <li class="nav-item"><a href="/Vistas/consultarRegistro.jsp" class="nav-link nav-link-green">Consultar</a></li>
                                <li class="nav-item"><a href="/Vistas/cerrarSesion.jsp" class="nav-link nav-link-green">Cerrar Sesión</a></li>
                            </ul>
                        </div>
                        <div class="footer-contacts">
                            <a href="https://www.saludcapital.gov.co/Paginas2/Inicio.aspx" target="_blank" class="text-primary">
                                <i class="fa fa-hospital"></i> Secretaría de Salud de Bogotá
                            </a>
                            <a href="https://www.saludcapital.gov.co/DSP/Paginas/Informacion_Vigilancia_SaludPublica.aspx" target="_blank" class="text-primary">
                                <i class="fa fa-shield-alt"></i> Vigilancia Salud Pública
                            </a>

                        </div>
                        <div class="social-icons mt-3 text-center">
                            <a href="https://web.facebook.com/secretariadistritaldesalud" target="_blank">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6.55v-5.88H7V7.67h1.55V5.61C8.55 3.72 9.64 2 12.7 2c1.2 0 2 .1 2 .1V4h-1.5c-1.1 0-1.42.68-1.42 1.38v1.8H14l-.35 2.45H10.08V16h3.92a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
                                </svg>
                            </a>
                            <a href="https://x.com/SectorSalud?ref_src=twsrc%5Etfw%7Ctwcamp%5Eembeddedtimeline%7Ctwterm%5Escreen-name%3ASectorSalud%7Ctwcon%5Es1_c1" target="_blank">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter-x" viewBox="0 0 16 16">
                                <path d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.601.75Zm-.86 13.028h1.36L4.323 2.145H2.865z"/>
                                </svg>
                                <a href="https://www.instagram.com/secretariasaludbogota/" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                                    <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"/>
                                    </svg></a>
                                <a href="https://www.youtube.com/c/Secretar%C3%ADaDistritaldeSalud" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                                    <path d="M15.58 3.22c-.195-.73-.776-1.308-1.51-1.504C12.54 1 8 1 8 1s-4.54 0-5.07.716c-.734.195-1.315.773-1.51 1.504C1 4.74 1 8 1 8s0 3.26.42 4.78c.195.73.776 1.308 1.51 1.503C3.46 15 8 15 8 15s4.54 0 5.07-.717c.734-.195 1.315-.773 1.51-1.503C15 11.26 15 8 15 8s0-3.26-.42-4.78zM6.5 11V5l5 3-5 3z"/>
                                    </svg></a>

                        </div>
                        <footer class="pt-3 mt-4 text-body-secondary border-top text-center">
                            <p class="mt-3" style="font-size: 16px; color: black;">
                                &copy; Secretaría Distrital de Salud<br>
                                Cra 32 #12-81 Bogotá, Colombia<br>
                                Teléfono: 601 3649090<br>
                                Código Postal: 0571<br>
                                <a href="https://www.saludcapital.gov.co/Documents/Horarios_Atencion.pdf" style="text-decoration-underline: none; color: black;">Consulte los Horarios de Atención</a><br>
                                Línea Servicio a la ciudadanía: 601 3295090<br>
                                <a href="https://www.saludcapital.gov.co/Documents/Puntos_de_Atencion.pdf" style="text-decoration-underline: none; color: black;">Puntos de atención al ciudadano</a><br>
                                notificacionjudicial@saludcapital.gov.co<br>
                                <a href="https://www.saludcapital.gov.co/Documents/Politicas_Sitios_Web.pdf" style="text-decoration-underline: none; color: black;">Políticas de Seguridad de la Información y Términos de Uso del Sitio Web de la Secretaría Distrital de Salud y el Fondo Financiero de Salud</a><br>
                                <a href="https://www.saludcapital.gov.co/Documents/Politica_Proteccion_Datos_P.pdf" style="text-decoration-underline: none; color: black;">Políticas de Protección y Tratamiento de Datos Personales de la Secretaría Distrital de Salud y el Fondo Financiero de Salud</a>
                            </p>
                        </footer>

                                                </div>

                                                <script>
                                                    function eliminar(numDocumento) {
                                                        if (confirm('¿Estás seguro de que quieres eliminar este registro ' + numDocumento + ' ?')) {
                                                            fetch("/ControladorRegistroPaciente?accion=EliminarRegistroPaciente&numDocumento=" + numDocumento)
                                                                    .then(response => response.json())
                                                                    .then(data => {
                                                                        var mensajeDiv = document.getElementById('mensaje');
                                                                        mensajeDiv.style.display = 'block';

                                                                        if (data.success) {
                                                                            mensajeDiv.className = 'alert alert-success';
                                                                        } else {
                                                                            mensajeDiv.className = 'alert alert-danger';
                                                                        }

                                                                        mensajeDiv.innerText = data.mensaje;
                                                                        mensajeDiv.scrollIntoView({behavior: "smooth"});
                                                                    })
                                                                    .catch(error => {
                                                                        var mensajeDiv = document.getElementById('mensaje');
                                                                        mensajeDiv.style.display = 'block';
                                                                        mensajeDiv.className = 'alert alert-danger';
                                                                        mensajeDiv.innerText = 'Error al procesar la solicitud.';
                                                                        mensajeDiv.scrollIntoView({behavior: "smooth"});
                                                                        console.error('Error:', error);
                                                                    });
                                                        }
                                                    }
                                                </script>
                                                
                                                <script>
                                                document.addEventListener("DOMContentLoaded", function () {
                                                    var consultarTestCaldas = {
                                                        pregunta1: "${consultarTestCaldas.pregunta1}",
                                                        pregunta2: "${consultarTestCaldas.pregunta2}",
                                                        pregunta3: "${consultarTestCaldas.pregunta3}",
                                                        pregunta4: "${consultarTestCaldas.pregunta4}",
                                                        pregunta5: "${consultarTestCaldas.pregunta5}",
                                                        pregunta6: "${consultarTestCaldas.pregunta6}",
                                                        pregunta7: "${consultarTestCaldas.pregunta7}",
                                                        pregunta8: "${consultarTestCaldas.pregunta8}",
                                                        pregunta9: "${consultarTestCaldas.pregunta9}",
                                                        pregunta10: "${consultarTestCaldas.pregunta10}",
                                                        pregunta11: "${consultarTestCaldas.pregunta11}",
                                                        pregunta12: "${consultarTestCaldas.pregunta12}",
                                                        pregunta13: "${consultarTestCaldas.pregunta13}",
                                                        pregunta14: "${consultarTestCaldas.pregunta14}"
                                                                // Agrega las demás preguntas aquí
                                                    };

                                                    for (var key in consultarTestCaldas) {
                                                        if (consultarTestCaldas.hasOwnProperty(key)) {
                                                            var value = consultarTestCaldas[key];
                                                            var yesRadio = document.getElementById(key + "-si");
                                                            var noRadio = document.getElementById(key + "-no");

                                                            if (value === "1" && yesRadio) {
                                                                yesRadio.checked = true;
                                                            } else if (value === "2" && noRadio) {
                                                                noRadio.checked = true;
                                                            }
                                                        }
                                                    }
                                                });
                                            </script>

                                            <script>
                                                document.addEventListener("DOMContentLoaded", function () {
                                                    var consultarTestCaldas = ${consultarTestCaldas};
                                                    if (consultarTestCaldas != null) {
                                                        var consultarTestCaldasValues = {
                                                            pregunta1: consultarTestCaldas.pregunta1,
                                                            pregunta2: consultarTestCaldas.pregunta2,
                                                            pregunta3: consultarTestCaldas.pregunta3,
                                                            pregunta4: consultarTestCaldas.pregunta4,
                                                            pregunta5: consultarTestCaldas.pregunta5,
                                                            pregunta6: consultarTestCaldas.pregunta6,
                                                            pregunta7: consultarTestCaldas.pregunta7,
                                                            pregunta8: consultarTestCaldas.pregunta8,
                                                            pregunta9: consultarTestCaldas.pregunta9,
                                                            pregunta10: consultarTestCaldas.pregunta10,
                                                            pregunta11: consultarTestCaldas.pregunta11,
                                                            pregunta12: consultarTestCaldas.pregunta12,
                                                            pregunta13: consultarTestCaldas.pregunta13,
                                                            pregunta14: consultarTestCaldas.pregunta14
                                                        };

                                                        for (var key in consultarTestCaldasValues) {
                                                            if (consultarTestCaldasValues.hasOwnProperty(key)) {
                                                                var value = consultarTestCaldasValues[key];
                                                                var yesRadio = document.getElementById(key + "-si");
                                                                var noRadio = document.getElementById(key + "-no");

                                                                if (value == 1 && yesRadio) {
                                                                    yesRadio.checked = true;
                                                                } else if (value == 2 && noRadio) {
                                                                    noRadio.checked = true;
                                                                }
                                                            }
                                                        }
                                                    }
                                                });
                                            </script>



                                                <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

                                                <script src="checkout.js"></script></body>
                                                </html>


