<!DOCTYPE html><!doctype html>
<html lang="es">
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

                           


 <h3>REGISTRO Y RESULTADOS </h3>
                                    <p class="lead">Puedes ver el registro del paciente  y posterior los resultados del test realizado . </p>
                                </div>

                                <div class="container">

   <form action="/Controlad" method="post" >

                                    <div class="col-md-12 col-lg-11">
                                        <h4 class="mb-3">Registro Paciente</h4>
                                        <form class="needs-validation" novalidate>
                                          <div class="row justify-content-center">
                                            <div class="row g-3">
                                                <div class="col-md-3">
                                                    <label for="firstName" class="form-label">Primer Nombre</label>
                                                    <input type="text" class="form-control" id="firstName"name="txtprimerNombre" placeholder="" value="" required>
                                                    <div class="invalid-feedback">
                                                        Valid first name is required.
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <label for="lastName" class="form-label">Segundo Nombre</label>
                                                    <input type="text" class="form-control" id="lastName" name="txtsegundoNombre" placeholder="" value="" required>
                                                    <div class="invalid-feedback">
                                                        Valid last name is required.
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="firstName" class="form-label">Primer Apellido</label>
                                                    <input type="text" class="form-control" id="firstName" name="txtprimerApellido"placeholder="" value="" required>
                                                    <div class="invalid-feedback">
                                                        Valid first Apellido is required.
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="firstName" class="form-label">Segundo Nombre</label>
                                                    <input type="text" class="form-control" id="firstName" name= "txtsegundoApellido"placeholder="" value="" required>
                                                    <div class="invalid-feedback">
                                                        Valid first name is required.
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="country" class="form-label">Tipo Identificación</label>
                                                    <select class="form-select" id="country" name="txtIdTipoDocumento"required>
                                                        <option value="">Seleccione....</option>
                                                        <option value="1">Cedula Ciudadania</option>
                                                        <option value="2">Cedula Extranjeria</option>
                                                        <option value="6">Pep</option>
                                                    </select>
                                                    <div class="invalid-feedback">
                                                        Please select a valid Tipo Identificación.
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <label for="address" class="form-label">Numero de Identificación</label>
                                                    <input type="text" class="form-control" id="address" name="txtnumDocumento" placeholder="Numero de indentificacion" required>
                                                    <div class="invalid-feedback">
                                                        Please enter your Numero de Identificación.
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <label for="address" class="form-label">Celular</label>
                                                    <input type="text" class="form-control" id="address" nane="txtnumCelular" placeholder="313 123.." required>
                                                    <div class="invalid-feedback">
                                                        Please enter your Celular.
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <label for="address2" class="form-label">Contacto <span class="text-body-secondary">(Optional)</span></label>
                                                    <input type="text" class="form-control" id="address2" name="txtnumTelefono" placeholder="601 123">
                                                </div>
                                                    <div class="col-md-3">
                                                        <label for="email" class="form-label">Email <span class="text-body-secondary">(Correo)</span></label>
                                                        
                                                        
                                                        <div class="input-group has-validation">
                                                            <span class="input-group-text">@</span>
                                                            <input type="text" class="form-control" id="username" name="txtemail" placeholder="you@mail,com" required>
                                                            <div class="invalid-feedback">
                                                                Your Email is required.
                                                            </div>
                                                        </div>
                                                   </div>
                                                   
                                                           <div class="col-md-3">
                                                            <label for="state" class="form-label">Localidad</label>
                                                            <select class="form-select" id="state" name="txtlocalidad" required>
                                                                <option value="">Seleccione....</option>
                                                                <option>Antonio Nariño</option>
                                                                <option>Barrios Unidos</option>
                                                                <option>Bosa</option>
                                                                <option>Chapinero</option>
                                                                <option>Ciudad Bolívar</option>
                                                                <option>Engativá</option>
                                                                <option>Fontibón</option>
                                                                <option>Kennedy</option>
                                                                <option>La Candelaria</option>
                                                                <option>Los Mártires</option>
                                                                <option>Puente Aranda</option>
                                                                <option>Rafael Uribe Uribe</option>
                                                                <option>San Cristobal</option>
                                                                <option>Santa Fe</option>
                                                                <option>Suba</option>
                                                                <option>Sumapaz</option>
                                                                <option>Teusaquillo</option>
                                                                <option>Tunjuelito</option>
                                                                <option>Usaquén</option>
                                                                <option>Usme</option>
                                                                <option>Cundinamarca</option>
                                                            </select>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid Localidad.
                                                            </div>
                                                        </div>


                                                        <div class="col-md-3">
                                                            <label for="address" class="form-label">Dirección</label>
                                                            <input type="text" class="form-control" id="address"name="txtdireccion" placeholder="Cl..." required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Dirección.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="address" class="form-label">Barrio</label>
                                                            <input type="text" class="form-control" id="address" name="txtbarrio" placeholder="San..." required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Barrio.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="state" class="form-label">UPZ</label>
                                                            <select class="form-select" id="state" name="txtupz" required>
                                                                <option value="">Seleccione...</option>
                                                                <option value="20 DE JULIO">20 de Julio</option>
                                                                <option value="ALFONSO LOPEZ">Alfonso López</option>
                                                                <option value="AMERICAS">Américas</option>
                                                                <option value="APOGEO">Apogeo</option>
                                                                <option value="ARBORIZADORA">Arborizadora</option>
                                                                <option value="BOLIVIA">Bolivia</option>
                                                                <option value="BOYACA REAL">Boyacá Real</option>
                                                                <option value="BOSA CENTRAL">Bosa Central</option>
                                                                <option value="BOSA OCCIDENTAL">Bosa Occidental</option>
                                                                <option value="BRITALIA">Britalia</option>
                                                                <option value="CARVAJAL">Carvajal</option>
                                                                <option value="CASTILLA">Castilla</option>
                                                                <option value="CHAPINERO">Chapinero</option>
                                                                <option value="CHICO LAGO">Chico Lago</option>
                                                                <option value="CIUDAD JARDÍN">Ciudad Jardín</option>
                                                                <option value="CIUDAD MONTES">Ciudad Montes</option>
                                                                <option value="COMUNEROS">Comuneros</option>
                                                                <option value="COUNTRY CLUB">Country Club</option>
                                                                <option value="CASA BLANCA SUBA">Casa Blanca Suba</option>
                                                                <option value="CORABASTOS">Corabastos</option>
                                                                <option value="DIANA TURBAY">Diana Turbay</option>
                                                                <option value="DOCE DE OCTUBRE">Doce de Octubre</option>
                                                                <option value="DANUBIO">Danubio</option>
                                                                <option value="EL PRADO">El Prado</option>
                                                                <option value="EL PORVENIR">El Porvenir</option>
                                                                <option value="EL REFUGIO">El Refugio</option>
                                                                <option value="EL RINCON">El Rincón</option>
                                                                <option value="EL TESORO">El Tesoro</option>
                                                                <option value="ENGATIVÁ">Engativá</option>
                                                                <option value="GRAN BRITALIA">Gran Britalia</option>
                                                                <option value="GRAN YOMASA">Gran Yomasa</option>
                                                                <option value="GALERIAS">Galerías</option>
                                                                <option value="GARCES NAVAS">Garcés Navas</option>
                                                                <option value="ISMAEL PERDOMO">Ismael Perdomo</option>
                                                                <option value="JERUSALEM">Jerusalén</option>
                                                                <option value="KENNEDY CENTRAL">Kennedy Central</option>
                                                                <option value="LA ALHAMBRA">La Alhambra</option>
                                                                <option value="LA CANDELARIA">La Candelaria</option>
                                                                <option value="LA FLORESTA">La Floresta</option>
                                                                <option value="LA FLORA">La Flora</option>
                                                                <option value="LA GLORIA">La Gloria</option>
                                                                <option value="LA MACARENA">La Macarena</option>
                                                                <option value="LA SABANA">La Sabana</option>
                                                                <option value="LAS CRUCES">Las Cruces</option>
                                                                <option value="LAS FERIAS">Las Ferias</option>
                                                                <option value="LAS NIEVES">Las Nieves</option>
                                                                <option value="LUCERO">Lucero</option>
                                                                <option value="LOURDES">Lourdes</option>
                                                                <option value="LOS ALCAZARES">Los Alcázares</option>
                                                                <option value="LOS ANDES">Los Andes</option>
                                                                <option value="LOS LIBERTADORES">Los Libertadores</option>
                                                                <option value="LOS CEDROS">Los Cedros</option>
                                                                <option value="MARRUECOS">Marruecos</option>
                                                                <option value="MARCO FIDEL SUAREZ">Marco Fidel Suárez</option>
                                                                <option value="MINUTO DE DIOS">Minuto de Dios</option>
                                                                <option value="MUZU">Muzu</option>
                                                                <option value="NIZA">Niza</option>
                                                                <option value="PARDO RUBIO">Pardo Rubio</option>
                                                                <option value="PARQUE EL SALITRE">Parque El Salitre</option>
                                                                <option value="PARQUE SIMÓN BOLÍVAR - CAN">Parque Simón Bolívar - Can</option>
                                                                <option value="PATIO BONITO">Patio Bonito</option>
                                                                <option value="PUENTE ARANDA">Puente Aranda</option>
                                                                <option value="QUIROGA">Quiroga</option>
                                                                <option value="RESTREPO">Restrepo</option>
                                                                <option value="SAN BLAS">San Blas</option>
                                                                <option value="SAN FRANCISCO">San Francisco</option>
                                                                <option value="SAN JOSE">San José</option>
                                                                <option value="SAN JOSE DE BAVARIA">San José de Bavaria</option>
                                                                <option value="SAN RAFAEL">San Rafael</option>
                                                                <option value="SAN CRISTOBAL NORTE">San Cristóbal Norte</option>
                                                                <option value="SANTA CECILIA">Santa Cecilia</option>
                                                                <option value="SANTA BARBARA">Santa Bárbara</option>
                                                                <option value="SANTA FE">Santa Fe</option>
                                                                <option value="SANTA ISABEL">Santa Isabel</option>
                                                                <option value="SOSIEGO">Sosiego</option>
                                                                <option value="SUBA">Suba</option>
                                                                <option value="TEUSAQUILLO">Teusaquillo</option>
                                                                <option value="TIMIZA">Timiza</option>
                                                                <option value="TIBABUYES">Tibabuyes</option>
                                                                <option value="TOBERIN">Toberín</option>
                                                                <option value="TUNJUELITO">Tunjuelito</option>
                                                                <option value="USAQUEN">Usaquén</option>
                                                                <option value="USME">Usme</option>
                                                                <option value="VENECIA">Venecia</option>
                                                                <option value="VERBENAL">Verbenal</option>
                                                                <option value="ZONA INDUSTRIAL">Zona Industrial</option>
                                                            </select>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid Localidad.
                                                            </div>
                                                        </div>

                                                       <hr class="my-4">
    
   
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
 <a href="/Vistas/guardarCambios.jsp" class="w-100 btn btn-primary btn-lg" onclick="calcularSuma()">
             Terminar</a>
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


