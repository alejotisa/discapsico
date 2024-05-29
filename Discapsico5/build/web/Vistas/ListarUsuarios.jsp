

<%@page import="Persistencia.DaoUsuarios"%>
<%@page import="Persistencia.DaoEntidad"%>
<%@page import="Persistencia.DaoPerfil"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuarios"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Usuarios</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

        <!--link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/css/bootstrap.min.css" rel="stylesheet"-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
              crossorigin="anonymous">



        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <!--link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
              crossorigin="anonymous"-->
        <!--link rel="stylesheet" href="@sweetalert2/themes/dark/dark.css">
        <script src="sweetalert2/dist/sweetalert2.min.js"></script-->

        <!--script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script-->

        <link href="Vistas/estilo4.css" rel="stylesheet" type="text/css"/>
        <link href="Vistas/css_tablas.css" rel="stylesheet" type="text/css"/>

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

        <div class="col-11">

            <h1 class="text-primary elegant-font"><b>LISTA USUARIOS</b></h1> 
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
            <div class="form-group text-right">


                <div class="form-group text-right">
                    <a href="ControladorUsuario?accion=listar" class="btn btn-primary"> 
                        <i class="fas fa-list"></i> Listar</a>
                    <a href="/Vistas/home.jsp" class="btn btn-success">
                        <i class="bi bi-arrow-left-square-fill text-warning"></i> Inicio</a>
                </div>
                <h1>${mensaje}</h1>
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


        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script><%--lo de las alertas--%>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> <!-- For alert-style pop-up messages -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> <!-- For AJAX functionality -->
        <script src="./js/Funsiones2.js" type="text/javascript"></script>
        <script src="./js/Funsiones_Varias.js" type="text/javascript"></script>




        <script>
                                           function eliminarCliente(id) {
                                               swal({
                                                   title: "¿Estás seguro?",
                                                   text: "Una vez eliminado, no podrás recuperar este Cliente.",
                                                   icon: "warning",
                                                   buttons: true,
                                                   dangerMode: true,
                                               })
                                                       .then((willDelete) => {
                                                           if (willDelete) {
                                                               // Aquí rediriges a la URL de eliminación
                                                               window.location.href = "ControladorClientes?accion=eliminar&id=" + id;
                                                           } else {
                                                               swal("El Cliente está a salvo.");
                                                           }

                                                       });
                                           }
        </script>

        <script>
            $(document).ready(function () {
                $(document).on("click", ".btnDelete", function () {
                    var idp = $(this).data("id");
                    confirmarEliminacion(idp);
                });

                function confirmarEliminacion(idp) {
                    swal({
                        title: "¿Está seguro de eliminar Cliente?",
                        text: "Una vez eliminado deberá agregar de nuevo.",
                        icon: "warning",
                        buttons: {
                            confirmar: "Sí, Eliminar",
                            cancelar: "No, Cancelar"
                        },
                    }).then((isConfirm) => {
                        if (isConfirm) {
                            eliminarRegistro(idp);
                        } else {
                            swal("Cancelado", "Cancelaste la eliminación", "error");
                        }
                    });
                }

                function eliminarRegistro(idp) {
                    var url = "ControladorClientes?accion=eliminar&id=" + idp;

                    console.log("URL de eliminación:", url);

                    $.ajax({
                        type: 'POST',
                        url: url,
                        async: true,
                    }).done(function (response) {
                        console.log("Respuesta del servidor:", response);

                        if (response === "success") {
                            swal("Eliminado", "El Cliente se ha eliminado", "success");
                            setTimeout(function () {
                                window.location.href = "ControladorClientes?accion=listar";
                            }, 1000);
                        } else {
                            swal("Error Cliente en Uso", response, "error");
                        }
                    }).fail(function () {
                        swal("Error", "Hubo un problema al intentar eliminar el Cliente", "error");
                    });
                }
            });
        </script>


    </body>
</html>

