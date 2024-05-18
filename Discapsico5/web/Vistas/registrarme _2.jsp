
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <!-- Link to Font Awesome CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


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


                        <div class="row">           
                            <hr>
                            <div class="card col-sm-4 mb-4  mt-5 sticky-top">

                                <%--  Inicio Formulario --%>

                                <form action="ControladorUsuario" method="POST" autocomplete="off" class="custom-form">

                                    <div class="row">
                                        <div class="col-md-6 ">

                                            <h4 class="text-primary elegant-font mb-3">Datos de Registro</h4>

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

                                        </div>
                                        <div class="col-md-6">   
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



                                            div class="form-group mt-3 text-center" style="border: none;">
                                            <button type="submit" name="accion" value="registrar" class="w-100 btn btn-primary btn-lg">
                                                <i class="fas fa-save "></i> Guardar</button>

                                            <button type="submit" name="accion" value="registrar" class="btn btn-warning">
                                                <i class="fas fa-save "></i> Agregar</button>
                                            <button type="submit" name="accion" value="actualizar" class="btn btn-success">
                                                <i class="bi bi-arrow-repeat"></i> Actualizar</button>
                                            <button type="submit" name="accion" value="listar" class="btn btn-secondary">
                                                <i class="bi bi-x-lg"></i> Cancelar</button>
                                        </div>   






                                    </div>
                            </div>

                            </form>
                        </div> 

                        <div class="col-sm-8 mb-4 mt-5 sticky-top">
                            <h4 class=" elegant-font"><b style="background: #4286f4; font-family: Bahnschrift SemiBold">LISTA USUARIOS</b></h4> 

                            <div class=" table-container ml-3 md-3 table-responsive" >
                                <table class="table table-striped table-hover sticky-top">
                                    <thead >
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombres</th>                       
                                            <th>Apellido</th>                       
                                            <th>Num Documento</th>                       
                                            <th>Teléfono</th>
                                            <th>Correo</th>
                                            <th>Usuario</th>
                                            <th>Clave</th>
                                            <th>Perfil</th>
                                            <th>Tipo Doc</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<Usuario> LtUsuarios = (List<Usuario>) request.getAttribute("LtUser1");
                                            for (Usuario usuario : LtUsuarios {%>
                                        <tr>
                                            <td><%= usuario.getIdUsuario()%></td>
                                            <td><%= usuario.getNombres()%></td>                           
                                            <td><%= usuario.getApellidos()%></td>
                                            <td><%= usuario.getNumDocumento()%></td>
                                            <td><%= usuario.getTelefono()%></td>
                                            <td><%= usuario.getEmail()%></td>
                                            <td><%= usuario.getUsuario()%></td>
                                            <td><%= usuario.getClave()%></td>
                                            <td><%= DaoPerfil.obtenerunNombrePerfil(usuario.getPerfilId())%></td>
                                            <td><%= DaoTipoDocumento.obtenerunNombreTipoDocumento(usuario.getTipodocumentoId())%></td>

                                            <td>

                                                <div class="btn-group" role="group" aria-label="Acciones">

                                                    <a href="ControladorUsuario?accion=eliminar&id=<%= usuario.getIdUsuario()%>"
                                                       class="btn btn-danger btn-sm" onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?')">
                                                        <i class="fas fa-trash"></i> <!-- Ícono de papelera -->
                                                    </a>                                      
                                                    <a href="ControladorUsuario?accion=editar&id=<%= usuario.getIdUsuario()%>" class="btn btn-primary btn-sm"> 
                                                        <!-- id  de un usuario se lo envio al controlador  en variable id -->  
                                                        <i class="fas fa-pencil-alt"></i> <!-- Ícono de lápiz -->  
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                            <div class="form-group mt-4 text-right">
                                <a href="ControladorUsuario?accion=listar" class="btn btn-primary"> 
                                    <i class="fas fa-list"></i> Listar</a>
                                <a href="./index3.jsp" class="btn btn-warning">
                                    <i class="bi bi-arrow-left-square-fill text-dark"></i> Inicio</a>
                            </div>
                        </div>
                        </div>   

                        </div> 



                        <!-- Jquery-3.5.1 sirve para ejecutar funsion dezplazamiento dentro de la tabla -->
                        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

                        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                                crossorigin="anonymous"
                        ></script>
                        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
                                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
                                crossorigin="anonymous"
                        ></script>


                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


                        </body>
                        </html>