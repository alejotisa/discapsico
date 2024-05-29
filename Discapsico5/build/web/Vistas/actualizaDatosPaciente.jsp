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
                background-color: #008080; /* Color hueso m�s claro */
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
                            <li class="nav-item"><a href="/Vistas/cerrarSesion.jsp" class="nav-link nav-link-white">Cerrar Sesi�n</a></li>
                        </ul>
                    </div>
                </header>
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
                                                <% }%>


                                                <form action="/ControladorRegistroPaciente" method="post" >

                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control" name="txtnumDocumento"  
                                                               placeholder="Buscar..." aria-label="Buscar" aria-describedby="basic-addon2">
                                                        <button type="submit" name="accion" value="ActualizarRegistroPaciente" class="btn btn-success btn">
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
                                                            <label for="country" class="form-label">Tipo de Identificaci�n</label>
                                                            <select class="form-select" id="country" name="txtIdTipoDocumento"required>
                                                                <option value="${registropaciente.idTipoDocumento}">${registropaciente.idTipoDocumento} </option>
                                                                <option value="1">Cedula Ciudadania</option>
                                                                <option value="2">Cedula Extranjeria</option>
                                                                <option value="6">Pep</option>
                                                            </select>
                                                            <div class="invalid-feedback">
                                                                Please select a valid Tipo Identificaci�n.
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="address" class="form-label">Numero de Identificaci�n</label>
                                                            <input type="text" class="form-control" id="address"  value="${registropaciente.numDocumento}" 
                                                                   name="txtnumDocumento" placeholder="Numero de indentificacion" required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Numero de Identificaci�n.
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
                                                                <option>Antonio Nari�o</option>
                                                                <option>Barrios Unidos</option>
                                                                <option>Bosa</option>
                                                                <option>Chapinero</option>
                                                                <option>Ciudad Bol�var</option>
                                                                <option>Engativ�</option>
                                                                <option>Fontib�n</option>
                                                                <option>Kennedy</option>
                                                                <option>La Candelaria</option>
                                                                <option>Los M�rtires</option>
                                                                <option>Puente Aranda</option>
                                                                <option>Rafael Uribe Uribe</option>
                                                                <option>San Cristobal</option>
                                                                <option>Santa Fe</option>
                                                                <option>Suba</option>
                                                                <option>Sumapaz</option>
                                                                <option>Teusaquillo</option>
                                                                <option>Tunjuelito</option>
                                                                <option>Usaqu�n</option>
                                                                <option>Usme</option>
                                                                <option>Cundinamarca</option>
                                                            </select>
                                                            <div class="invalid-feedback">
                                                                Please provide a valid Localidad.
                                                            </div>
                                                        </div>


                                                        <div class="col-md-3">
                                                            <label for="address" class="form-label">Direcci�n</label>
                                                            <input type="text" class="form-control" id="address" value="${registropaciente.direccion}" 
                                                                   name="txtdireccion" placeholder="Cl..." required>
                                                            <div class="invalid-feedback">
                                                                Please enter your Direcci�n.
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
                                                                <option value="ALFONSO LOPEZ">Alfonso L�pez</option>
                                                                <option value="AMERICAS">Am�ricas</option>
                                                                <option value="APOGEO">Apogeo</option>
                                                                <option value="ARBORIZADORA">Arborizadora</option>
                                                                <option value="BOLIVIA">Bolivia</option>
                                                                <option value="BOYACA REAL">Boyac� Real</option>
                                                                <option value="BOSA CENTRAL">Bosa Central</option>
                                                                <option value="BOSA OCCIDENTAL">Bosa Occidental</option>
                                                                <option value="BRITALIA">Britalia</option>
                                                                <option value="CARVAJAL">Carvajal</option>
                                                                <option value="CASTILLA">Castilla</option>
                                                                <option value="CHAPINERO">Chapinero</option>
                                                                <option value="CHICO LAGO">Chico Lago</option>
                                                                <option value="CIUDAD JARD�N">Ciudad Jard�n</option>
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
                                                                <option value="EL RINCON">El Rinc�n</option>
                                                                <option value="EL TESORO">El Tesoro</option>
                                                                <option value="ENGATIV�">Engativ�</option>
                                                                <option value="GRAN BRITALIA">Gran Britalia</option>
                                                                <option value="GRAN YOMASA">Gran Yomasa</option>
                                                                <option value="GALERIAS">Galer�as</option>
                                                                <option value="GARCES NAVAS">Garc�s Navas</option>
                                                                <option value="ISMAEL PERDOMO">Ismael Perdomo</option>
                                                                <option value="JERUSALEM">Jerusal�n</option>
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
                                                                <option value="LOS ALCAZARES">Los Alc�zares</option>
                                                                <option value="LOS ANDES">Los Andes</option>
                                                                <option value="LOS LIBERTADORES">Los Libertadores</option>
                                                                <option value="LOS CEDROS">Los Cedros</option>
                                                                <option value="MARRUECOS">Marruecos</option>
                                                                <option value="MARCO FIDEL SUAREZ">Marco Fidel Su�rez</option>
                                                                <option value="MINUTO DE DIOS">Minuto de Dios</option>
                                                                <option value="MUZU">Muzu</option>
                                                                <option value="NIZA">Niza</option>
                                                                <option value="PARDO RUBIO">Pardo Rubio</option>
                                                                <option value="PARQUE EL SALITRE">Parque El Salitre</option>
                                                                <option value="PARQUE SIM�N BOL�VAR - CAN">Parque Sim�n Bol�var - Can</option>
                                                                <option value="PATIO BONITO">Patio Bonito</option>
                                                                <option value="PUENTE ARANDA">Puente Aranda</option>
                                                                <option value="QUIROGA">Quiroga</option>
                                                                <option value="RESTREPO">Restrepo</option>
                                                                <option value="SAN BLAS">San Blas</option>
                                                                <option value="SAN FRANCISCO">San Francisco</option>
                                                                <option value="SAN JOSE">San Jos�</option>
                                                                <option value="SAN JOSE DE BAVARIA">San Jos� de Bavaria</option>
                                                                <option value="SAN RAFAEL">San Rafael</option>
                                                                <option value="SAN CRISTOBAL NORTE">San Crist�bal Norte</option>
                                                                <option value="SANTA CECILIA">Santa Cecilia</option>
                                                                <option value="SANTA BARBARA">Santa B�rbara</option>
                                                                <option value="SANTA FE">Santa Fe</option>
                                                                <option value="SANTA ISABEL">Santa Isabel</option>
                                                                <option value="SOSIEGO">Sosiego</option>
                                                                <option value="SUBA">Suba</option>
                                                                <option value="TEUSAQUILLO">Teusaquillo</option>
                                                                <option value="TIMIZA">Timiza</option>
                                                                <option value="TIBABUYES">Tibabuyes</option>
                                                                <option value="TOBERIN">Tober�n</option>
                                                                <option value="TUNJUELITO">Tunjuelito</option>
                                                                <option value="USAQUEN">Usaqu�n</option>
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


                                                            <h3>TEST DE CALDAS</h3>

                                                            <h4 class=" mb-5 mt-5">Adherencia al Tratamiento (AT) </h4>

                                                            <div class="mb-3">
                                                                <label for="pregunta1" class="form-label">1. �Sigue otras recomendaciones aparte del manejo farmacol�gico o psicoterap�utico?</label>
                                                                <br>
                                                                <div class="d-flex justify-content-end align-items-center"role="group" aria-label="Pregunta 1">
                                                                    <input type="radio" class="btn-check" name="pregunta1" value="2"id="pregunta1-no" autocomplete="off" >
                                                                    <label class="btn btn-outline-success" for="pregunta1-no">No</label>
                                                                    <input type="radio" class="btn-check" name="pregunta1"value="1" id="pregunta1-si" autocomplete="off">
                                                                    <label class="btn btn-outline-success" for="pregunta1-si">S�</label>
                                                                </div>
                                                                <div class="mb-3">
                                                                    <label for="pregunta2" class="form-label">2. �Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                                    <br>
                                                                    <div class="d-flex justify-content-end align-items-center"role="group" aria-label="Pregunta 2">
                                                                        <input type="radio" class="btn-check" name="pregunta2" value="2"id="pregunta2-no" autocomplete="off" >
                                                                        <label class="btn btn-outline-success" for="pregunta2-no">No</label>
                                                                        <input type="radio" class="btn-check" name="pregunta2"value="1" id="pregunta2-si" autocomplete="off">
                                                                        <label class="btn btn-outline-success" for="pregunta2-si">S�</label>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="pregunta3" class="form-label">3. �Asiste a controles odontol�gicos?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center"role="group" aria-label="Pregunta 3">
                                                                            <input type="radio" class="btn-check" name="pregunta3"value="2" id="pregunta3-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta3-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta3" value="1"id="pregunta3-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta3-si">S�</label>
                                                                        </div>
                                                                    </div>
                                                                    <!-- Pregunta 4 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta4" class="form-label">4. �Para que siga el tratamiento, es necesario que otros se lo recuerden?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center"role="group" aria-label="Pregunta 4">
                                                                            <input type="radio" class="btn-check" name="pregunta4"value="1" id="pregunta4-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta4-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta4" value="2"id="pregunta4-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta4-si">S�</label>
                                                                        </div>


                                                                    </div>

                                                                    <!-- Pregunta 5 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta5" class="form-label">5. �Cuida su alimentaci�n?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center"role="group" aria-label="Pregunta 5">
                                                                            <input type="radio" class="btn-check" name="pregunta5"  value="2" id="pregunta5-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta5-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta5" value="1" id="pregunta5-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta5-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 6 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta6" class="form-label">6. �Cuida su higiene personal?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 6">
                                                                            <input type="radio" class="btn-check" name="pregunta6" value="2" id="pregunta6-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta6-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta6" value="1"id="pregunta6-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta6-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 7 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta7" class="form-label">7. �Asiste con la periodicidad programada a los controles?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 7">
                                                                            <input type="radio" class="btn-check" name="pregunta7"value="2" id="pregunta7-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta7-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta7" value="1"id="pregunta7-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta7-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 8 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta8" class="form-label">8. �Asiste a procesos de capacitaci�n, como cursos, seminarios, clases?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 8">
                                                                            <input type="radio" class="btn-check" name="pregunta8"value="2"id="pregunta8-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta8-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta8"value="1" id="pregunta8-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta8-si">S�</label>
                                                                        </div>
                                                                    </div>
                                                                    <h4 class="mt-5 mb-5 ">Discapacidad a nivel Personal y Emocional (DPE)</h4>
                                                                    <!-- Pregunta 9 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta9" class="form-label">9. �Asiste a los programas de promoci�n y prevenci�n?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 9">
                                                                            <input type="radio" class="btn-check" name="pregunta9"value="2" id="pregunta9-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta9-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta9"value="1" id="pregunta9-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta9-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 10 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta10" class="form-label">10. �Se responsabiliza de la toma de medicamentos y asistencia a las terapias?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 10">
                                                                            <input type="radio" class="btn-check" name="pregunta10" value="2"id="pregunta10-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta10-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta10"value="1" id="pregunta10-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta10-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 11 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta11" class="form-label">11. �En los �ltimos tres meses, �se frustra con facilidad?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 11">
                                                                            <input type="radio" class="btn-check" name="pregunta11"value="2" id="pregunta11-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta11-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta11"value="1" id="pregunta11-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta11-si">S�</label>
                                                                        </div>
                                                                    </div>
                                                                    <h4 class="mt-5 mb-5 ">Discapacidad Social (DS)</h4>
                                                                    <!-- Pregunta 12 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta12" class="form-label">12. �Considera que tiene habilidades manuales o art�sticas aparte de las laborales?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 12">
                                                                            <input type="radio" class="btn-check" name="pregunta12"value="1" id="pregunta12-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta12-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta12"value="2" id="pregunta12-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta12-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 13 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta13" class="form-label">13. �En los �ltimos tres meses, �es frecuente que se a�sle a causa de sus emociones?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 13">
                                                                            <input type="radio" class="btn-check" name="pregunta13" value="2"id="pregunta13-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta13-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta13"value="1" id="pregunta13-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta13-si">S�</label>
                                                                        </div>
                                                                    </div>

                                                                    <!-- Pregunta 14 -->
                                                                    <div class="mb-3">
                                                                        <label for="pregunta14" class="form-label">14. �Suele buscar ayuda en las personas m�s cercanas cuando se siente triste o angustiado?</label>
                                                                        <br>
                                                                        <div class="d-flex justify-content-end align-items-center" role="group" aria-label="Pregunta 14">
                                                                            <input type="radio" class="btn-check" name="pregunta14" value="2"id="pregunta14-no" autocomplete="off" >
                                                                            <label class="btn btn-outline-success" for="pregunta14-no">No</label>
                                                                            <input type="radio" class="btn-check" name="pregunta14" value="1"id="pregunta14-si" autocomplete="off">
                                                                            <label class="btn btn-outline-success" for="pregunta14-si">S�</label>
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
                                                                                                    <th class="importancia-alta">Categor�a</th>
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

                                                     <footer class="pt-3 mt-4 text-body-secondary border-top">
                        <  <div class="container top text-center d-flex justify-content-center align-items-center">
                            <ul class="nav nav-pills">
                                <li class="nav-item"><a href="/Vistas/home.jsp" class="nav-link nav-link-green">Home</a></li>
                                <li class="nav-item"><a href="/Vistas/registropaciente.jsp" class="nav-link nav-link-green">Crear Registro</a></li>
                                <li class="nav-item"><a href="/Vistas/consultarRegistro.jsp" class="nav-link nav-link-green">Consultar</a></li>
                                <li class="nav-item"><a href="/Vistas/cerrarSesion.jsp" class="nav-link nav-link-green">Cerrar Sesi�n</a></li>
                            </ul>
                        </div>
                        <div class="footer-contacts">
                            <a href="https://www.saludcapital.gov.co/Paginas2/Inicio.aspx" target="_blank" class="text-primary">
                                <i class="fa fa-hospital"></i> Secretar�a de Salud de Bogot�
                            </a>
                            <a href="https://www.saludcapital.gov.co/DSP/Paginas/Informacion_Vigilancia_SaludPublica.aspx" target="_blank" class="text-primary">
                                <i class="fa fa-shield-alt"></i> Vigilancia Salud P�blica
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
                                &copy; Secretar�a Distrital de Salud<br>
                                Cra 32 #12-81 Bogot�, Colombia<br>
                                Tel�fono: 601 3649090<br>
                                C�digo Postal: 0571<br>
                                <a href="https://www.saludcapital.gov.co/Documents/Horarios_Atencion.pdf" style="text-decoration-underline: none; color: black;">Consulte los Horarios de Atenci�n</a><br>
                                L�nea Servicio a la ciudadan�a: 601 3295090<br>
                                <a href="https://www.saludcapital.gov.co/Documents/Puntos_de_Atencion.pdf" style="text-decoration-underline: none; color: black;">Puntos de atenci�n al ciudadano</a><br>
                                notificacionjudicial@saludcapital.gov.co<br>
                                <a href="https://www.saludcapital.gov.co/Documents/Politicas_Sitios_Web.pdf" style="text-decoration-underline: none; color: black;">Pol�ticas de Seguridad de la Informaci�n y T�rminos de Uso del Sitio Web de la Secretar�a Distrital de Salud y el Fondo Financiero de Salud</a><br>
                                <a href="https://www.saludcapital.gov.co/Documents/Politica_Proteccion_Datos_P.pdf" style="text-decoration-underline: none; color: black;">Pol�ticas de Protecci�n y Tratamiento de Datos Personales de la Secretar�a Distrital de Salud y el Fondo Financiero de Salud</a>
                            </p>
                        </footer>
                                                </div>
                                                <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

                                                <script src="checkout.js"></script></body>
                                                </html>

