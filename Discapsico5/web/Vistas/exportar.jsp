<!DOCTYPE html><!doctype html>
<html lang="en">
<style>
        .recuadro {
            border: 2px solid #000;
            padding: 20px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #000;
            padding: 10px;
            text-align: center;
        }
        .importancia-alta {
            background-color: #00204a; /* Azul oscuro para importancia alta */
            color: #fff; /* Texto en color blanco para contraste */
        }
        .importancia-media {
            background-color: #004b87; /* Azul medio para importancia media */
            color: #fff; /* Texto en color blanco para contraste */
        }
        .importancia-baja {
            background-color: #0077bd; /* Azul claro para importancia baja */
            color: #000; /* Texto en color negro para contraste */
        }
    </style>
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

                            <div class="container mt-5 mb-5 px-0">
                                <div class="card">
                                    <div class="card-body text-bg-primary" >
                                        <h5 class="card-title">Buscar Resultado Test Caldas </h5>
                                        <p>Aqui puedes gestionar las busquedas de los pacientes  por numero de cedula para consultar resultado test.</p>
                                        <form>
                                            <div class="input-group mb-3">
                                                <input type="text" class="form-control" placeholder="Buscar..." aria-label="Buscar" aria-describedby="basic-addon2">
                                                <button class="btn btn-info" type="button" id="button-addon2"><i class="bi bi-search"></i>Buscar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>


 <h3>RESULTADOS TEST DE CALDAS</h3>
 
    <div class="container mt-5">
    <div class="table-responsive mt-4">
      <table class="table table-bordered table-striped">
      <thead>
       <tr>
        <th>Preguntas</th>
        <th>Respuestas</th>
       </tr>
       </thead>
        <tbody>
         <tr>
                    <td style="text-align: center;"><b>Adherencia al Tratamiento  (AT)</b></td>
                    <td ></td>
                    </tr>
        
                    <tr>
                    <td style="text-align: left;">1. ¿Sigue otras recomendaciones aparte del manejo farmacológico o psicoterapéutico?</td>
                    <td >SI</td>
                    </tr>
                <tr>
                    
              <td style="text-align: left;">2. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</td>
                    <td>SI</td>
                       </tr>
                       <tr>
              <td style="text-align: left;">3. ¿Asiste a controles odontológicos?</td>
                      <td>NO</td>
                        </tr>
                        <tr>
              <td style="text-align: left;">4. ¿Para que siga el tratamiento, ¿es necesario que otros se lo recuerden?</td>
                         <td>NO</td>
                            </tr>
                             <tr>
              <td style="text-align: left;">5. ¿Cuida su alimentación?</td>
                         <td>SI</td>
                        </tr>
                        <tr>
                 <td style="text-align: left;">6. ¿Cuida su higiene personal?</td>
                      <td>NO</td>
                       </tr>
                        <tr>
                  <td style="text-align: left;">7. ¿Asiste con la periodicidad programada a los controles?</td>
                        <td>SI</td>
                        </tr>
                         <tr>
                 <td style="text-align: left;">8. ¿Asiste a procesos de capacitación, como cursos, seminarios, clases?</td>
                     <td>SI</td>
                       </tr>
                        <tr>
                    <td style="text-align: center;"><b>Discapacidad a nivel Personal y Emocional (DPE)</b></td>
                    <td ></td>
                    </tr>
                        <tr>
                 <td style="text-align: left;">9. ¿Asiste a los programas de promoción y prevención?</td>
                     <td>SI</td>
                        </tr>
                        <tr>
                 <td style="text-align: left;">10. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</td>
                      <td>NO</td>
                       </tr>
                       <tr>
                 <td style="text-align: left;">11. ¿En los últimos tres meses, ¿se frustra con facilidad?</td>
                      <td>SI</td>
                        </tr>
                          <tr>
                    <td style="text-align: center;"><b>Discapacidad a nivel Social (DS)</b></td>
                    <td ></td>
                    </tr>
                        <tr>
                <td style="text-align: left;">12.¿Considera que tiene habilidades manuales o artísticas aparte de las laborales?</td>
                      <td>NO</td>
                         </tr>
                         <tr>
                <td style="text-align: left;">13. ¿En los últimos tres meses, ¿es frecuente que se aísle a causa de sus emociones?</td>
                       <td>SI</td>
                         </tr>
                         <tr>
               <td style="text-align: left;">14 ¿Suele buscar ayuda en las personas más cercanas cuando se siente triste o angustiado?</td>
                         <td>NO</td>
                          </tr>
                                            </tbody>
                                        </table>
                                    </div>
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
  <hr class="my-4">

   <a href="/Vistas/guardarCambios.jsp" class="w-100 btn btn-primary btn-lg" onclick="calcularSuma()">
             Exportar</a>           
</div>
</div>
</form>
                                                    
                                            
</div>
                                    
                                    

 </main>

                                    <footer class="my-5 pt-5 text-body-secondary text-center text-small">
                                        <p class="mb-1"> &copy; 2017 ? 2023 Secretaria de salud</p>

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

                                        <script src="checkout.js"></script></body>
                                        </html>

