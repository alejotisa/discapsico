
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
    </head>
    <body class=" text-bg-light">

        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="../index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
                    <span class="fs-4">DISCAPSICO</span>


                    <ul class="nav nav-pills">
                        <li class="nav-item"><a href="" class="nav-link"></a></li>
                        <li class="nav-item"><a href="" class="nav-link"></a></li>
                        <li class="nav-item"><a href="" class="nav-link"></a></li>
                        <li class="nav-item"><a href="../index.jsp" class="btn btn-primary">Inicio</a></li>

                        <div class="py-5 text-center">

                            <h2>REGISTRATE</h2>
                            <p class="lead">Queremos invitarte a formar parte de DISCAPSICO, nuestro sistema de información dedicado a gestionar datos de personas con discapacidades psicosociales en Bogotá. Tu registro en DISCAPSICO nos ayudará a mejorar la atención y los servicios que ofrecemos a esta comunidad.</p>
                        </div>

                        <div class="container">
                            <form action="/ControladorUsuario" method="POST" autocomplete="off" class="custom-form">

                                <div class="col-md-12 col-lg-11">
                                    <h4 class="mb-3">Datos de Registro</h4>
                                    <form class="needs-validation" novalidate>
                                        <div class="row g-3">
                                            <div class="col-sm-6">
                                                <label for="firstName" class="form-label">Nombres	</label>
                                                <input type="text" class="form-control" id="firstName"name="txtNombre"  placeholder="" value="" required>
                                                <div class="invalid-feedback">
                                                    Valid first name is required.
                                                </div>
                                            </div>

                                            <div class="col-sm-6">
                                                <label for="lastName" class="form-label">Usuario</label>
                                                <input type="text" class="form-control" id="lastName" name="txtUser" placeholder="" value="" required>
                                                <div class="invalid-feedback">
                                                    Valid last name is required.
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="firstName" class="form-label">Clave</label>
                                                <input type="text" class="form-control" id="firstName"name="txtClave" placeholder="" value="" required>
                                                <div class="invalid-feedback">
                                                    Valid first Apellido is required.
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="email" class="form-label">Email<span class="text-body-secondary">(Correo)</span></label>
                                                <div class="input-group has-validation">
                                                    <span class="input-group-text">@</span>
                                                    <input type="text" class="form-control" id="username"name="txtCorreo" placeholder="you@mail,com" required>
                                                    <div class="invalid-feedback">
                                                        Valid first name is required.
                                                    </div>
                                                </div>
                                            </div> 
                                            <div class="form-group text-left">
                                                <label for="tipoPerfil">Perfil</label>
                                                <select class="form-control" id="tipoPerfil" name="txtperfil">
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

                                            </div>
                                            <div class="form-group text-left">
                                                <label for="tipoPerfil">Sub Red</label>
                                                <select class="form-control" id="tipoPerfil"  name="txtSubred">
                                                    <option value="0">Seleccione perfil</option>
                                                    <% List<Entidad> entidadlist = DaoEntidad.listar();
                                                        if (entidadlist != null) {
                                                            for (Entidad entidad : entidadlist) {
                                                                if (entidad != null) {%>
                                                    <option value="<%=entidad.getIdEntidad()%>"><%=entidad.getNombreEntidad()%></option>
                                                    <% }
                                                            }
                                                        }%>
                                                </select>

                                            </div>


                                            <%--    <div class="col-md-5">
                                    <label for="country" class="form-label">Subred</label>
                                    <select class="form-select" id="country"name="txtSubred" required>
                                        <option value="0">Seleccione....</option>
                                        <option value="1">Centro Oriente</option> 
                                        <option value="2">Norte</option>
                                        <option value="3">Sur</option>
                                        <option value="4">Sur Oriente</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid Ciudad.
                                    </div>
                                </div>--%>


                                            <hr class="my-4">

                                            <button type="submit" name="accion" value="registrar" class="w-100 btn btn-primary btn-lg">
                                                <i class="fas fa-save "></i> Guardar</button>








                                        </div>
                                </div>

                            </form>




                            <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

                            <script src="checkout.js"></script></body>


                            </body>
                            </html>