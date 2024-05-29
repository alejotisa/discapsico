<%@page import="Persistencia.DaoEntidad"%>
<%@page import="Modelo.Entidad"%>
<%@page import="Persistencia.DaoPerfil"%>
<%@page import="Modelo.Perfil"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
            .invalid-feedback {
                display: none;
            }
            .is-invalid + .invalid-feedback {
                display: block;
            }
        </style>
    </head>
    <body class="text-bg-light">
        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="../index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
                    <span class="fs-4">DISCAPSICO</span>
                </a>
                <ul class="nav nav-pills">
                    <li class="nav-item"><a href="../index.jsp" class="btn btn-primary">Inicio</a></li>
                </ul>
            </header>

            <div class="py-5 text-center">
                <h2>REGISTRATE</h2>
                <p class="lead">Queremos invitarte a formar parte de DISCAPSICO, nuestro sistema de información dedicado a gestionar datos de personas con discapacidades psicosociales en Bogotá. Tu registro en DISCAPSICO nos ayudará a mejorar la atención y los servicios que ofrecemos a esta comunidad.</p>
            </div>

            <div class="container">
                <form action="/ControladorUsuario" method="POST" autocomplete="off" class="custom-form" id="registrationForm" novalidate>
                    <div class="col-md-12 col-lg-11">
                        <h4 class="mb-3">Datos de Registro</h4>
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">Nombres</label>
                                <input type="text" class="form-control" id="firstName" name="txtNombre" maxlength="250" required>
                                <div class="invalid-feedback">El nombre es obligatorio y no debe exceder los 250 caracteres.</div>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">Usuario</label>
                                <input type="text" class="form-control" id="lastName" name="txtUser" maxlength="250" required>
                                <div class="invalid-feedback">El usuario es obligatorio y no debe exceder los 250 caracteres.</div>
                            </div>

                            <div class="col-sm-6">
                                <label for="password" class="form-label">Clave</label>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="password" name="txtClave" maxlength="250" required>
                                    <button class="btn btn-outline-secondary" type="button" id="togglePassword">Mostrar</button>
                                    <div class="invalid-feedback">La clave es obligatoria y no debe exceder los 250 caracteres.</div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label for="confirmPassword" class="form-label">Confirmar Clave</label>
                                <input type="password" class="form-control" id="confirmPassword" name="txtConfirmClave" maxlength="250" required>
                                <div class="invalid-feedback">Debe confirmar su clave y no debe exceder los 250 caracteres.</div>
                            </div>

                            <div class="col-sm-6">
                                <label for="email" class="form-label">Email <span class="text-body-secondary">(Correo)</span></label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text">@</span>
                                    <input type="email" class="form-control" id="email" name="txtCorreo" placeholder="you@mail.com" maxlength="250" required>
                                    <div class="invalid-feedback">El correo es obligatorio y debe ser una dirección válida.</div>
                                </div>
                            </div> 

                            <div class="form-group text-left">
                                <label for="tipoPerfil">Perfil</label>
                                <select class="form-control" id="tipoPerfil" name="txtperfil" required>
                                    <option value="0">Seleccione perfil</option>
                                    <% List<Perfil> perfiles = DaoPerfil.listar();
                                        if (perfiles != null) {
                                            for (Perfil perfil : perfiles) {
                                                if (perfil != null) {%>
                                    <option value="<%=perfil.getIdperfil()%>"><%=perfil.getTipoPerfil()%></option>
                                    <% }
                                            }
                                        }%>
                                </select>
                                <div class="invalid-feedback">Seleccione un perfil válido.</div>
                            </div>

                            <div class="form-group text-left">
                                <label for="tipoPerfil">Sub Red</label>
                                <select class="form-control" id="tipoPerfil" name="txtSubred" required>
                                    <option value="0">Seleccione sub red</option>
                                    <% List<Entidad> entidadlist = DaoEntidad.listar();
                                        if (entidadlist != null) {
                                            for (Entidad entidad : entidadlist) {
                                                if (entidad != null) {%>
                                    <option value="<%=entidad.getIdEntidad()%>"><%=entidad.getNombreEntidad()%></option>
                                    <% }
                                            }
                                        }%>
                                </select>
                                <div class="invalid-feedback">Seleccione una sub red válida.</div>
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


                            <button type="submit" name="accion" value="registrar" class="w-100 btn btn-primary btn-lg">
                                <i class="fas fa-save"></i> Guardar
                            </button>
                        </div>
                    </div>
                </form>

                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybA1rVZ4mxF5G8dE59rEFDMG4WmD5zP3QhEIhWyjiAnI6j9p" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-pprn3073KE6tl6ERd2zrn2t1Ytnwxl1LepvE5zja3rm0v0R8KKVZX1xFLQKAgDw9" crossorigin="anonymous"></script>

                <script>
                    // Toggle password visibility
                    document.getElementById('togglePassword').addEventListener('click', function (e) {
                        const password = document.getElementById('password');
                        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                        password.setAttribute('type', type);
                        this.textContent = type === 'password' ? 'Mostrar' : 'Ocultar';
                    });

                    // Custom validation script
                    (function () {
                        'use strict'

                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.querySelectorAll('.custom-form')

                        // Loop over them and prevent submission
                        Array.prototype.slice.call(forms).forEach(function (form) {
                            form.addEventListener('submit', function (event) {
                                // Check if form is valid
                                if (!form.checkValidity()) {
                                    event.preventDefault()
                                    event.stopPropagation()
                                }

                                // Check if passwords match
                                var password = document.getElementById('password');
                                var confirmPassword = document.getElementById('confirmPassword');
                                if (password.value !== confirmPassword.value) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                    confirmPassword.setCustomValidity('Passwords do not match');
                                    confirmPassword.classList.add('is-invalid');
                                } else {
                                    confirmPassword.setCustomValidity('');
                                    confirmPassword.classList.remove('is-invalid');
                                }

                                form.classList.add('was-validated')
                            }, false)
                        })
                    })()
                </script>
            </div>
        </div>
    </body>
</html>