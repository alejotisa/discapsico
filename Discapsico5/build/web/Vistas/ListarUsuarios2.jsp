

<%@page import="Modelo.Entidad"%>
<%@page import="Modelo.Entidad"%>
<%@page import="Modelo.Perfil"%>
<%@page import="Persistencia.DaoEntidad"%>
<%@page import="Persistencia.DaoPerfil"%>
<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>

    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Usuarios</title>      



        <!-- Link to Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

        <!-- Link to Font Awesome CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>   



    </head>
    <body>  
<!-- Barra de Navegacion -->
<nav class="navbar navbar-expand-md navbar-dark bg-primary border-3 fixed-top border-bottom">
    <div class="container-fluid">
        <a href="/Vistas/home.jsp" class="navbar-brand fs-4 nav-link-white font-weight-bold ms-4 me-auto">DISCAPSICO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Otros elementos de la barra de navegación -->
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="/Vistas/home.jsp">
                        <span class="btn btn-outline-light">
                            <i class="bi bi-arrow-left-square-fill text-dark"></i> Home
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Barra de Navegacion -->



        <div class="row ">            
            <hr>
            <div class="card col-sm-4 mb-4  mt-5 sticky-top">

                <h4 class="text-primary elegant-font"><b>FORMULARIO DE REGISTRO</b></h4> 

                <form action="ControladorUsuario" method="POST" autocomplete="off" class="custom-form">

                    <div class="row">
                        <div class="col-md-6 ">

                            <div class="form-group text-left">
                                <label for="firstName" class="form-label">Nombres	</label>
                                <input type="text" class="form-control" id="firstName"   value="${User.getNombres()}"  
                                       name="txtNombre"  placeholder="Ingrese Nombre"  required>

                            </div>                       

                            <div class="form-group text-left">
                                <label for="tipoPerfil">Sub Red</label>
                                <select class="form-control" id="tipoPerfil" value="${User.getEntidadId()}"  name="txtSubred">
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
                            <div class="form-group text-left">
                                <label for="usuario">Usuario</label>
                                <input type="text" class="form-control" id="usuario" 
                                       value="${User.getUsuario()}"  name="txtUser"   required name="usuario" placeholder="Ingrese Usuario">
                            </div>
                        </div>
                        <div class="col-md-6">        



                            <div class="form-group text-left">
                                <label for="clave">Clave</label>
                                <input type="password" class="form-control" id="clave" value="${User.getClave()}" name="txtClave" placeholder="Ingrese Clave">
                            </div>

                            <div class="form-group text-left">
                                <label for="email" class="form-label">Email<span class="text-body-secondary">(Correo)</span></label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text">@</span>
                                    <input type="text" class="form-control" id="username" name="txtCorreo" placeholder="you@mail,com" required>
                                    <div class="invalid-feedback">
                                        Valid first name is required.
                                    </div>
                                </div>
                            </div>


                            <div class="form-group text-left">
                                <label for="tipoPerfil">Perfil</label>
                                <select class="form-control" id="tipoPerfil" value="${User.getPerfilId()}" name="txtperfil">
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
                        </div>
                    </div>
                    <div class="form-group mt-3 text-center" style="border: none;">

                        <button type="submit" name="accion" value="registrar" class="btn btn-warning">
                            <i class="fas fa-save "></i> Agregar</button>
                        <button type="submit" name="accion" value="actualizar" class="btn btn-success">
                            <i class="bi bi-arrow-repeat"></i> Actualizar</button>

                        <button type="submit" name="accion" value="listar2" class="btn btn-secondary">
                            <i class="bi bi-x-lg"></i> Cancelar</button>

                    </div>    
                </form>
            </div>   

            <div class="col-sm-8 mb-4 mt-5 sticky-top">
                <br>
                <h4 class="text-primary elegant-font"><b>LISTA USUARIOS</b></h4> 

                <div class=" table-container ml-3 md-3 table-responsive" >
                    <div class=" table-container ml-3 md-3 table-responsive" >
                        <table id="miTabla" class="table table-striped table-hover sticky-top">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombres</th>                 
                                    <th>Usuario</th>
                                    <th>Clave</th>
                                    <th>Correo</th>
                                    <th>Perfil</th>
                                    <th>Subred</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    List<Usuarios> Lista = (List<Usuarios>) request.getAttribute("listaUser2");
                                    for (Usuarios usuarios : Lista) {%>
                                <tr>
                                    <td><%= usuarios.getIdUsuario()%></td>
                                    <td><%= usuarios.getNombres()%></td>                           
                                    <td><%= usuarios.getUsuario()%></td>
                                    <td><%= usuarios.getClave()%></td>
                                    <td><%= usuarios.getCorreo()%></td>                        

                                    <td><%= DaoPerfil.obtenerNombrePerfil(usuarios.getPerfilId())%></td>
                                    <td><%= DaoEntidad.obtenerNombreEntidad(usuarios.getEntidadId())%></td>


                                    <td>
                                        <div class="btn-group" role="group" aria-label="Acciones">

                                            <a href="ControladorUsuario?accion=eliminar&id=<%= usuarios.getIdUsuario()%>"
                                               class="btn btn-danger btn-sm" onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?')">
                                                <i class="fas fa-trash"></i> <!-- Ícono de papelera -->
                                            </a>



                                            <a href="ControladorUsuario?accion=editarUsu&id=<%= usuarios.getIdUsuario()%>" class="btn btn-primary btn-sm">
                                                <i class="fas fa-pencil-alt"></i> <!-- Ícono de lápiz -->
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>   
          
        </div>


        <style>


            /* Estilo para contenedor de tabla */
            .table-container {
                max-height: 400px;
                overflow-y: scroll; /* Agrega una barra de desplazamiento vertical si es necesario */
            }

            /* Estilo para el encabezado de la tabla */
            .table-container thead {
                position: sticky;
                top: 0;
                background-color: #0056b3;
                color: #000; /* Color de texto más suave */
                z-index: 1;
            }

            /* Estilo para la tabla */
            .table {
                width: 100%;
                border-collapse: collapse;
            }



            thead th {
                position: sticky;
                top: 0;
                background-color: #343a40; /* Cambia esto al color de fondo deseado */
                color: #ffffff; /* Cambia esto al color de texto deseado */
            }

            /* Estilo para las celdas de la tabla */
            td, th {
                padding: 10px; /* Ajusta el espaciado interno según sea necesario */
                font-size: 12px; /* Tamaño de fuente más pequeño */
                background-color: #e9ecef; /* Color de fondo más suave */
                border: 1px solid #ced4da; /* Borde más suave */
                text-align: center;
                color: #000; /* Color de texto más oscuro */
            }

            /* Estilo para las celdas de la tabla */
            .tr {

                padding: 0;
                font-size: 12px;
                background-color: #f0f0f0;
                position: sticky;
                top: 0;
                border: 1px solid #ddd;
                text-align: center;
            }


            /* Estilo para el encabezado de la tabla */
            thead {
                background-color: #343a40;
                color: #ffffff;
            }




            /* Estilo para el formulario */
            #MYFormulario {
                background-color: #f0f0f0; /* Fondo gris claro */
                padding: 20px; /* Espaciado interno */
                margin-right: 20px; /* Margen derecho */
            }

            /* Estilo para las etiquetas (labels) con texto azul */
            label {
                color: blue;
            }

            .my-menu-item {
                margin-right: 10px; /* Ajusta el margen derecho como desees */
            }

            .navbar-sm {
                padding: 0.5rem 1rem; /* Ajusta los valores según tus preferencias */
                height: 50px; /* Ajusta el valor según tus preferencias */
            }
            /* Cambia el color de fondo del modal */
            .modal-content {
                background-color: #f2f2f2; /* Puedes cambiar este color a tu gusto */
                border: 1px solid #ccc;
                border-radius: 10px;
            }

            /* Centra el título del modal */
            .modal-title {
                text-align: center;
                color: #333; /* Color del texto */
            }

            /* Agrega relleno y margen a los elementos del formulario para un mejor espaciado */
            .modal-body form .form-group {
                padding: 10px;
                margin-bottom: 15px;
            }

            /* Estiliza los campos de entrada */
            .modal-body form .form-control {
                background-color: #fff; /* Color de fondo del campo de entrada */
                border: 1px solid #ccc; /* Borde del campo de entrada */
                border-radius: 5px; /* Radio del borde del campo de entrada */
                padding: 5px;
                color: #333; /* Color del texto en el campo de entrada */
            }

            /* Estiliza el botón de cierre */
            .modal-content .btn-close {
                color: #333; /* Color del botón de cierre */
            }

            /* Estiliza el botón de envío si tienes uno */
            .modal-body form .btn-submit {
                background-color: #007bff; /* Color de fondo del botón de envío */
                color: #fff; /* Color del texto del botón de envío */
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                cursor: pointer;
            }

            /* Agrega un efecto al pasar el ratón por encima del botón de envío */
            .modal-body form .btn-submit:hover {
                background-color: #0056b3; /* Nuevo color de fondo al pasar el ratón */
            }


            /* Estilo para el contenedor */
            .container {
                margin-right: 20px; /* Margen de 20px en el borde derecho */
                margin-left: 20px; /* Margen de 20px en el borde izquierdo */
            }


            /* Estilo para el formulario personalizado */
            .custom-form {
                max-width: 800px;
                margin: 0 auto;
                background-color: #f0f0f0;
                padding: 20px;
                border-radius: 10px;
            }

            /* Estilo para las etiquetas del formulario */
            .custom-form label {

                color: #00008B;
            }

            /* Estilo para campos inválidos en el formulario */
            .campo-invalido {
                border: 1px solid red;
                background-color: #ffcccc;
            }

            /* Estilo para los grupos de elementos del formulario */
            .custom-form .form-group {
                margin-bottom: 15px;
            }

            /* Estilo para los títulos h1 */
            h1 {
                margin: .65em 0;
                font-size: 2em;
                position: sticky;
                top: 0;
                background-color: #ffffff;
                z-index: 1;
                color: #000;
                font-family: "arial";
                margin-top: 90px;
                /*text-shadow: 2px 2px 4px rgba(0,0,0,0.2);*/
            }

            /* Estilo para los select */
            select.form-control {
                border: 2px solid #4286f4;
                border-radius: 5px;
            }

            /* Estilo para el fondo del body */
            body {
                color: #000;
                text-align: center;
            }

            /* Estilo para los títulos h2 y h3 */
            h2, h3 {
                font-family: "Tu Fuente Personalizada", sans-serif;
                color: #FF0000;
                text-align: center;
                line-height: 1.5;
            }

            /* Estilo para las etiquetas */


            #label-azul {
                color: blue;
            }



            /* Estilo para el título personalizado */
            .custom-title {
                font-family: "Tu Fuente Personalizada", sans-serif;
                color: #0056b3;
                text-align: center;
                line-height: 1.5;
            }


            /* Estilo que el menu de la barra de abra horizontalmente  */

            .horizontal-menu {
                display: flex;
                flex-direction: row;
                align-items: center;
            }

            .horizontal-menu .nav-link {
                margin-right: 10px;
            }

            .card {
                background-color: #f8f9fa; /* Cambiar el color de fondo de la tarjeta */
                border: 1px solid #ced4da; /* Agregar un borde a la tarjeta */
                border-radius: 10px; /* Redondear las esquinas de la tarjeta */
                padding: 20px; /* Agregar espacio interno a la tarjeta */
            }
            .btn {
                border-radius: 20px; /* Redondear los botones */
            }
            .table-container {
                margin-top: 10px; /* Agregar espacio encima de la tabla */
            }

            /* Agrega margen superior al formulario para desplazarlo debajo de la barra de navegación */

        </style>


        <!-- Scripts al final del body -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>





    </body>
</html>

