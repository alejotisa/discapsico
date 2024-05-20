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

                                    <h3>EDITAR REGISTRO O TEST CALDAS </h3>
                                    <p class="lead">Puedes editar el registro del paciente  y posterior editar del test realizado si lo deseas . </p>


                                    ConsultarRegistroPaciente
                                    <div class="container mt-5 mb-5 px-0">
                                        <div class="card">
                                            <div class="card-body text-bg-warning">
                                                <h5 class="card-title ">Busque El Paciente</h5>
                                                <p class="">Aqui puedes gestionar las busquedas de los pacientes por numero de cedula para empezar a editar.</p>

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
                                                        <input type="text" class="form-control" name="txtnumDocumento"  
                                                               placeholder="Buscar..." aria-label="Buscar" aria-describedby="basic-addon2">
                                                        <button type="submit" name="accion" value="ConsultarActRegistroPaciente" class="btn btn-success btn">
                                                            <i class="fas fa-save "></i> Buscar</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                                <div class="container">

                                    <form action="/ControladorRegistroPaciente" method="post" >

                                        <div class="col-md-12 col-lg-11">
                                            <h4 class="mb-3">Datos Paciente</h4>
                                            <form class="needs-validation" novalidate>
                                                <div class="row justify-content-center">
                                                    <div class="row g-3">

                                                        <div class="col-md-3">
                                                            <label for="firstName" class="form-label">Primer Nombre</label>
                                                            <input type="text" class="form-control" id="firstName"name="txtprimerNombre" placeholder="" 
                                                                   value="${registropaciente.primerNombre}" required>


                                                            <div class="invalid-feedback">
                                                                Valid first name is required.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="lastName" class="form-label">Segundo Nombre</label>
                                                            <input type="text" class="form-control" id="lastName" name="txtsegundoNombre" placeholder="" 
                                                                   value="${registropaciente.segundoNombre}" required>
                                                            <div class="invalid-feedback">
                                                                Valid last name is required.
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <label for="firstName" class="form-label">Primer Apellido</label>
                                                            <input type="text" class="form-control" id="firstName" name="txtprimerApellido"placeholder="" 
                                                                   value="${registropaciente.primerApellido}" required>
                                                            <div class="invalid-feedback">
                                                                Valid first Apellido is required.
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <label for="firstName" class="form-label">Segundo Apellido</label>
                                                            <input type="text" class="form-control" id="firstName" name= "txtsegundoApellido"placeholder="" 
                                                                   value="${registropaciente.segundoApellido}" required>
                                                            <div class="invalid-feedback">
                                                                Valid first name is required.
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <label for="country" class="form-label">Tipo de Identificación</label>
                                                            <select class="form-select" id="country" name="txtIdTipoDocumento"required>
                                                                <option value="${registropaciente.idTipoDocumento}">${registropaciente.idTipoDocumento} </option>
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
                                                            <input type="text" class="form-control" id="address"  value="${registropaciente.numDocumento}" 
                                                                   name="txtnumDocumento" placeholder="Numero de indentificacion" required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Numero de Identificación.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="address" class="form-label">Celular</label>
                                                            <input type="text" class="form-control" id="address" value="${registropaciente.numCelular}" 
                                                                   name="txtnumCelular" placeholder="313 123.." required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Celular.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="address2" class="form-label">Telefono <span class="text-body-secondary">(Optional)</span></label>
                                                            <input type="text" class="form-control" id="address2" value="${registropaciente.numTelefono}" 
                                                                   name="txtnumTelefono" placeholder="601 123">
                                                        </div>
                                                        <div class="col-md-3">
                                                            <label for="email" class="form-label">Email <span class="text-body-secondary">(Correo)</span></label>


                                                            <div class="input-group has-validation">
                                                                <span class="input-group-text">@</span>
                                                                <input type="text" class="form-control" id="username" value="${registropaciente.email}" name="txtemail" placeholder="you@mail,com" required>
                                                                <div class="invalid-feedback">
                                                                    Your Email is required.
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="state" class="form-label">Localidad</label>
                                                            <select class="form-select" id="state" name="txtlocalidad" >
                                                                <option value="">${registropaciente.localidad}</option>
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
                                                            <input type="text" class="form-control" id="address" value="${registropaciente.direccion}" 
                                                                   name="txtdireccion" placeholder="Cl..." required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Dirección.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="address" class="form-label">Barrio</label>
                                                            <input type="text" class="form-control" id="address" value="${registropaciente.barrio}" 
                                                                   name="txtbarrio" placeholder="San..." required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Barrio.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="state" class="form-label">UPZ</label>
                                                            <select class="form-select" id="state" name="txtupz"  >
                                                                <option value="">${registropaciente.upz}</option>
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


                                                        <div class="form-group mt-3 text-center" style="border: none;">
                                                            <div class="d-flex justify-content-end">
                                                                <!-- <button type="submit" name="accion" value="registrar" class="btn btn-warning mx-1">
                                                                     <i class="fas fa-save"></i> Editar
                                                                 </button>-->

                                                                <button type="submit" name="accion" value="EditarRegistroPaciente" class="btn btn-success btn">
                                                                    <i class="fas fa-save "></i> Guardar</button>


                                                                </button>
                                                                <button type="submit" name="accion" value="listar2" class="btn btn-secondary mx-1">
                                                                    <i class="bi bi-x-lg"></i> Cancelar
                                                                </button>
                                                            </div>
                                                        </div>
                                                        </form>



                                                        <form action="/Controlad" method="post" >                           
                                                            <hr class="my-4">


                                                            <h3>TEST DE CALDAS ${consultarTestCaldas.pregunta1}</h3>

                                                            <h4 class=" mb-5 mt-5">Adherencia al Tratamiento (AT) </h4>

                                                            <div class="mb-3">
                                                                <label for="pregunta1" class="form-label">1. ¿Sigue otras recomendaciones aparte del manejo farmacológico o psicoterapéutico?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 1">
                                                                    <input type="radio" class="btn-check" name="pregunta1" value="2" id="pregunta1-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta1-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta1" value="1" id="pregunta1-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta1-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <div class="mb-3">
                                                                <label for="pregunta2" class="form-label">2. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 2">
                                                                    <input type="radio" class="btn-check" name="pregunta2" value="2" id="pregunta2-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta2-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta2" value="1" id="pregunta2-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta2-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <div class="mb-3">
                                                                <label for="pregunta3" class="form-label">3. ¿Asiste a controles odontológicos?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 3">
                                                                    <input type="radio" class="btn-check" name="pregunta3" value="2" id="pregunta3-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta3-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta3" value="1" id="pregunta3-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta3-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <div class="mb-3">
                                                                <label for="pregunta4" class="form-label">4. ¿Para que siga el tratamiento, es necesario que otros se lo recuerden?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 4">
                                                                    <input type="radio" class="btn-check" name="pregunta4" value="1" id="pregunta4-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta4-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta4" value="2" id="pregunta4-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta4-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <div class="mb-3">
                                                                <label for="pregunta5" class="form-label">5. ¿Cuida su alimentación?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 5">
                                                                    <input type="radio" class="btn-check" name="pregunta5" value="2" id="pregunta5-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta5-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta5" value="1" id="pregunta5-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta5-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <div class="mb-3">
                                                                <label for="pregunta6" class="form-label">6. ¿Cuida su higiene personal?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 6">
                                                                    <input type="radio" class="btn-check" name="pregunta6" value="2" id="pregunta6-no" autocomplete="off">
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
                                                                    <input type="radio" class="btn-check" name="pregunta7" value="2" id="pregunta7-no" autocomplete="off">
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
                                                                    <input type="radio" class="btn-check" name="pregunta8" value="2" id="pregunta8-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta8-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta8" value="1" id="pregunta8-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta8-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <h4 class="mt-5 mb-5">Discapacidad a nivel Personal y Emocional (DPE)</h4>

                                                            <!-- Pregunta 9 -->
                                                            <div class="mb-3">
                                                                <label for="pregunta9" class="form-label">9. ¿Asiste a los programas de promoción y prevención?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 9">
                                                                    <input type="radio" class="btn-check" name="pregunta9" value="2" id="pregunta9-no" autocomplete="off">
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
                                                                    <input type="radio" class="btn-check" name="pregunta10" value="2" id="pregunta10-no" autocomplete="off">
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
                                                                    <input type="radio" class="btn-check" name="pregunta11" value="2" id="pregunta11-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta11-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta11" value="1" id="pregunta11-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta11-si">Sí</label>
                                                                </div>
                                                            </div>

                                                            <h4 class="mt-5 mb-5">Discapacidad Social (DS)</h4>

                                                            <!-- Pregunta 12 -->
                                                            <div class="mb-3">
                                                                <label for="pregunta12" class="form-label">12. ¿Considera que tiene habilidades manuales o artísticas aparte de las laborales?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 12">
                                                                    <input type="radio" class="btn-check" name="pregunta12" value="1" id="pregunta12-no" autocomplete="off">
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
                                                                    <input type="radio" class="btn-check" name="pregunta13" value="2" id="pregunta13-no" autocomplete="off">
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
                                                                    <input type="radio" class="btn-check" name="pregunta14" value="2" id="pregunta14-no" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta14-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta14" value="1" id="pregunta14-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta14-si">Sí</label>
                                                                </div>
                                                            </div>
                                                            <hr>


                                                            <div class="form-group mt-3 text-center" style="border: none;">
                                                                <div class="d-flex justify-content-end">
                                                                    <!-- <button type="submit" name="accion" value="registrar" class="btn btn-warning mx-1">
                                                                       <i class="fas fa-save"></i> Editar
                                                                   </button>-->

                                                                    <button type="submit" name="accion" value="actualizar" class="btn btn-success mx-1">
                                                                        <i class="bi bi-arrow-repeat"></i> Guardar
                                                                    </button>
                                                                    <button type="submit" name="accion" value="listar2" class="btn btn-secondary mx-1">
                                                                        <i class="bi bi-x-lg"></i> Cancelar
                                                                    </button>
                                                                </div>
                                                            </div>

                                                            <hr>                                   
                                                        </form>



                                                        <form>
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
                                                                <a href="/Vistas/home.jsp" class="w-100 btn btn-success btn-lg" onclick="calcularSuma()">
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


                                            <h3>TEST DE CALDAS</h3>

                                            <h4 class="mb-5 mt-5">Adherencia al Tratamiento (AT)</h4>

                                            <div class="mb-3">
                                                <label for="pregunta1" class="form-label">1. ¿Sigue otras recomendaciones aparte del manejo farmacológico o psicoterapéutico?</label>
                                                <br>
                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 1">
                                                    <input type="radio" class="btn-check" name="pregunta1" value="2" id="pregunta1-no" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta1-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta1" value="1" id="pregunta1-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta1-si">Sí</label>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="pregunta2" class="form-label">2. ¿Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                <br>
                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 2">
                                                    <input type="radio" class="btn-check" name="pregunta2" value="2" id="pregunta2-no" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta2-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta2" value="1" id="pregunta2-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta2-si">Sí</label>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="pregunta3" class="form-label">3. ¿Asiste a controles odontológicos?</label>
                                                <br>
                                                <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 3">
                                                    <input type="radio" class="btn-check" name="pregunta3" value="2" id="pregunta3-no" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta3-no">No</label>
                                                    <input type="radio" class="btn-check" name="pregunta3" value="1" id="pregunta3-si" autocomplete="off">
                                                    <label class="btn btn-outline-success" for="pregunta3-si">Sí</label>
                                                </div>
                                            </div>


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

