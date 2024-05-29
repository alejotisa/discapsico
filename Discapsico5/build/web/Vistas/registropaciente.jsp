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
                <head>
                    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Paciente</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script>
        // Validación personalizada con JavaScript
        function validateForm(event) {
            var form = event.target;

            // Validar que todos los campos estén llenos
            var inputs = form.querySelectorAll('input[required], select[required]');
            var valid = true;
            inputs.forEach(function(input) {
                if (!input.value) {
                    valid = false;
                    input.classList.add('is-invalid');
                } else {
                    input.classList.remove('is-invalid');
                }
            });

            // Validar que solo se ingresen letras en los campos de nombre y apellido
            var textInputs = form.querySelectorAll('input[type="text"]');
            textInputs.forEach(function(input) {
                if (input.name.includes('Nombre') || input.name.includes('Apellido')) {
                    if (!/^[a-zA-Z\s]+$/.test(input.value)) {
                        valid = false;
                        input.classList.add('is-invalid');
                    } else {
                        input.classList.remove('is-invalid');
                    }
                }
            });

            // Validar que solo se ingresen números en los campos de identificación y teléfono
            var numberInputs = form.querySelectorAll('input[type="text"]');
            numberInputs.forEach(function(input) {
                if (input.name.includes('numDocumento') || input.name.includes('NumCel') || input.name.includes('numTelefono')) {
                    if (!/^\d+$/.test(input.value)) {
                        valid = false;
                        input.classList.add('is-invalid');
                    } else {
                        input.classList.remove('is-invalid');
                    }
                }
            });

            // Validar el campo de correo electrónico
            var emailInput = form.querySelector('input[type="email"]');
            if (!emailInput.value) {
                valid = false;
                emailInput.classList.add('is-invalid');
                alert('Debe colocar un correo válido.');
            } else if (!emailInput.value.includes('@')) {
                valid = false;
                emailInput.classList.add('is-invalid');
                alert('Debe colocar un correo válido con @.');
            } else {
                emailInput.classList.remove('is-invalid');
            }

            if (!valid) {
                event.preventDefault();
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <form action="/ControladorRegistroPaciente" method="post" onsubmit="validateForm(event)" novalidate>

            <div class="col-md-12 col-lg-11">
                <h4 class="mb-3">Registro Paciente</h4>
                <div class="needs-validation" novalidate>
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">Primer Nombre</label>
                            <input type="text" class="form-control" id="firstName" name="txtprimerNombre" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Solo se permiten letras.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label for="secondName" class="form-label">Segundo Nombre</label>
                            <input type="text" class="form-control" id="secondName" name="txtsegundoNombre" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Solo se permiten letras.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label for="firstSurname" class="form-label">Primer Apellido</label>
                            <input type="text" class="form-control" id="firstSurname" name="txtprimerApellido" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Solo se permiten letras.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label for="secondSurname" class="form-label">Segundo Apellido</label>
                            <input type="text" class="form-control" id="secondSurname" name="txtsegundoApellido" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Solo se permiten letras.
                            </div>
                        </div>

                        <div class="col-md-5">
                            <label for="idType" class="form-label">Tipo Identificación</label>
                            <select class="form-select" id="idType" name="txtIdTipoDocumento" required>
                                <option value="">Seleccione....</option>
                                <option value="1">Cédula Ciudadanía</option>
                                <option value="2">Cédula Extranjería</option>
                                <option value="6">PEP</option>
                            </select>
                            <div class="invalid-feedback">
                                Debe escoger una opción.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="idNumber" class="form-label">Número de Identificación</label>
                            <input type="text" class="form-control" id="idNumber" name="txtnumDocumento" placeholder="Número de identificación" required>
                            <div class="invalid-feedback">
                                Solo se permiten números.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="cellPhone" class="form-label">Celular</label>
                            <input type="text" class="form-control" id="cellPhone" name="txtNumCel" placeholder="313234" required>
                            <div class="invalid-feedback">
                                Solo se permiten números.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="contact" class="form-label">Contacto <span class="text-body-secondary">(Opcional)</span></label>
                            <input type="text" class="form-control" id="contact" name="txtnumTelefono" placeholder="601 123">
                            <div class="invalid-feedback">
                                Solo se permiten números.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="email" class="form-label">Email <span class="text-body-secondary">(Correo)</span></label>
                            <div class="input-group has-validation">
                                <span class="input-group-text">@</span>
                                <input type="email" class="form-control" id="email" name="txtemail" placeholder="you@mail.com" required>
                                <div class="invalid-feedback">
                                    Debe ingresar un correo válido.
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label for="locality" class="form-label">Localidad</label>
                            <select class="form-select" id="locality" name="txtlocalidad" required>
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
                                Debe escoger una opción.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="address" class="form-label">Dirección</label>
                            <input type="text" class="form-control" id="address" name="txtdireccion" placeholder="Cl..." required>
                            <div class="invalid-feedback">
                                Debe ingresar una dirección válida.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="neighborhood" class="form-label">Barrio</label>
                            <input type="text" class="form-control" id="neighborhood" name="txtbarrio" placeholder="San..." required>
                            <div class="invalid-feedback">
                                Debe ingresar un barrio válido.
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label for="upz" class="form-label">UPZ</label>
                            <select class="form-select" id="upz" name="txtupz" required>
                                <option value="">Seleccione...</option>
                                <option value="20 DE JULIO">20 de Julio</option>
                                <option value="ALFONSO LOPEZ">Alfonso López</option>
                                <option value="ANDALUCIA">Andalucía</option>
                                <option value="ARBELAEZ">Arbeláez</option>
                                <option value="BOSA LA ESTACION">Bosa la Estación</option>
                                <option value="BOSA LA LIBERTAD">Bosa la Libertad</option>
                                <option value="BOSA ORIENTAL">Bosa Oriental</option>
                                <option value="BRITALIA">Britalia</option>
                                <option value="CAPELLANIA">Capellanía</option>
                                <option value="CENTRAL">Central</option>
                                <option value="CHAPINERO">Chapinero</option>
                                <option value="CHUNIZA">Chuniza</option>
                                <option value="COSTA RICA">Costa Rica</option>
                                <option value="Diana Turbay">Diana Turbay</option>
                                <option value="EL PORVENIR">El Porvenir</option>
                                <option value="ENGATIVA">Engativá</option>
                                <option value="FONTIBON">Fontibón</option>
                                <option value="GAITANA">Gaitana</option>
                                <option value="GRAN BRITALIA">Gran Britalia</option>
                                <option value="GRAN YOMASA">Gran Yomasa</option>
                                <option value="GUAYABAL">Guayabal</option>
                                <option value="JESUS ARRIERO">Jesús Arriero</option>
                                <option value="JULIO RINCON">Julio Rincón</option>
                                <option value="KENNEDY">Kennedy</option>
                                <option value="LIBERTADORES">Libertadores</option>
                                <option value="LUCERO">Lucero</option>
                                <option value="MARSELLA">Marsella</option>
                                <option value="MODELIA">Modelia</option>
                                <option value="MONACO">Mónaco</option>
                                <option value="MUZU">Muzú</option>
                                <option value="PARQUES DE BOGOTA">Parques de Bogotá</option>
                                <option value="PASADENA">Pasadena</option>
                                <option value="PRADO VERANIEGO">Prado Veraniego</option>
                                <option value="PUENTE ARANDA">Puente Aranda</option>
                                <option value="SAN JOSE">San José</option>
                                <option value="SANTA ANA">Santa Ana</option>
                                <option value="SANTA FE">Santa Fe</option>
                                <option value="SUBA">Suba</option>
                                <option value="SUBA CENTRO">Suba Centro</option>
                                <option value="SUMAPAZ">Sumapaz</option>
                                <option value="TEUSAQUILLO">Teusaquillo</option>
                                <option value="TIMIZA">Timiza</option>
                                <option value="TORREMOLINOS">Torremolinos</option>
                                <option value="TUNJUELO">Tunjuelito</option>
                                <option value="USAQUEN">Usaquén</option>
                                <option value="USME">Usme</option>
                                <option value="VERBENAL">Verbenal</option>
                                <option value="ZONA FRANCA">Zona Franca</option>
                                <option value="EL CENTRO">El Centro</option>
                                <option value="LA CANDELARIA">La Candelaria</option>
                                <option value="LOMA LINDA">Loma Linda</option>
                                <option value="LOS ANDES">Los Andes</option>
                                <option value="SANTA ROSA">Santa Rosa</option>
                            </select>
                            <div class="invalid-feedback">
                                Debe escoger una opción.
                            </div>
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

                                        <button type="submit" name="accion" value="RegistroPaciente" class="w-100 btn btn-primary btn-lg">
                                            <i class="fas fa-save "></i> Guardar</button>

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
            <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qnvN54BgoJ6J6BvqgP4pglxgE60Ho+tqON1pncjnd9oaU8G4iLEO5wP9flT6kG8p" crossorigin="anonymous"></script>
            <script src="checkout.js"></script></body>
</html>


