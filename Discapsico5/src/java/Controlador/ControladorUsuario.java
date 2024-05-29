package Controlador;

import Modelo.Usuarios;
import Persistencia.DaoUsuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ControladorUsuario extends HttpServlet {

    Usuarios user = new Usuarios();
    int ide;  // Variable de instancia para almacenar el ID

    //La variable serialVersionUID se utiliza en Java para asignar una versión única 
    //a una clase Serializable.
    //En este contexto, private static final long serialVersionUID = 1L; simplemente está estableciendo 
    //el serialVersionUID de la clase ControladorConsecutivo
    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
        System.out.println(" <*> Controlador Usuario");
        processRequest(request, response);

        String action = request.getParameter("accion");

        switch (action) {
            case "add":
                request.getRequestDispatcher("Vistas/RegistrarUsuarios.jsp").forward(request, response);
                break;

            case "registrar":
                registrarUsuario(request, response);
                break;

            case "listar":
                listarUsuarios(request, response);
                break;

            case "listar2":
                listarUsuarios2(request, response);
                break;

            case "editarUsuarios":
                request.setAttribute("idEditar_ps", request.getParameter("id"));
                request.getRequestDispatcher("Vistas/Editar_prod_seco.jsp").forward(request, response);
                break;

            case "registrarEdicion":
                actualizarUsu(request, response);
                break;

            case "editarUsu":
                editarUsuarios(request, response);
                break;

            case "actualizar":
                actualizarUsuario(request, response);
                break;

            /*   case "buscar":
                buscarUsuario(request, response);
                break;
             */
            case "eliminar":
                eliminarUsuario(request, response);
                break;

            default:
                // Handle any other actions or provide a default behavior
                break;
        }
    }

    private void registrarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Capturar la info del Formulario

            String nombres = request.getParameter("txtNombre");
            String txtUser = request.getParameter("txtUser");
            String correo = request.getParameter("txtCorreo");
            String clave2 = request.getParameter("txtClave");
            int PerfilIdperfil = Integer.parseInt(request.getParameter("txtperfil"));
            int Subred = Integer.parseInt(request.getParameter("txtSubred"));

            //. Cargar el objeto de tipo Usuarios
            Usuarios usuarios = new Usuarios();

            usuarios.setNombres(nombres);
            usuarios.setUsuario(txtUser);
            usuarios.setCorreo(correo);
            usuarios.setClave(clave2);
            usuarios.setPerfilId(PerfilIdperfil);
            usuarios.setEntidadId(Subred);

            //. Guardar la informacion en BD
            if (DaoUsuarios.grabar(usuarios)) {
                request.setAttribute("mensaje", "El usuario fue registrado,!inicie sesion!");
                
            } else {
                request.setAttribute("mensaje", "el usuario no fue registrado, validar campos ingresados");
            }

          RequestDispatcher dispatcher3 = request.getRequestDispatcher("Vistas/iniciosesion.jsp");
                dispatcher3.forward(request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al registrar el Consecutivo");
            listarUsuarios2(request, response);
        }
    }

    private void listarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Usuarios> lt = DaoUsuarios.listar();
            request.setAttribute("listaUser2", lt);
            request.getRequestDispatcher("Vistas/ListarUsuarios.jsp").forward(request, response);
        } catch (Exception ex) {
            System.out.println(ex);
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al listar los Consecutivos");
            request.getRequestDispatcher("Vistas/ListarUsuarios.jsp").forward(request, response);
        }
    }

    private void listarUsuarios2(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Usuarios> lt = DaoUsuarios.listar();
            request.setAttribute("listaUser2", lt);
            request.getRequestDispatcher("Vistas/ListarUsuarios2.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al listar los Consecutivos");
            request.getRequestDispatcher("Vistas/ListarUsuarios2.jsp").forward(request, response);
        }
    }

    private void actualizarUsu(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String nombres = request.getParameter("txtNombre");
            String txtUser = request.getParameter("txtUser");
            String correo = request.getParameter("txtCorreo");
            String clave2 = request.getParameter("txtClave");
            int PerfilIdperfil = Integer.parseInt(request.getParameter("txtperfil"));
            int Subred = Integer.parseInt(request.getParameter("txtSubred"));
            int txtId = Integer.parseInt(request.getParameter("txtId"));

            //. Cargar el objeto de tipo Usuarios
            Usuarios usuarios = new Usuarios();

            usuarios.setNombres(nombres);
            usuarios.setUsuario(txtUser);
            usuarios.setCorreo(correo);
            usuarios.setClave(clave2);
            usuarios.setPerfilId(PerfilIdperfil);
            usuarios.setEntidadId(Subred);
            usuarios.setIdUsuario(txtId);

            boolean actualizacionExitosa = DaoUsuarios.editar(usuarios);

            if (actualizacionExitosa) {
                request.setAttribute("mensaje", "Consecutivo actualizado correctamente");
            } else {
                request.setAttribute("mensaje", "No se pudo actualizar el Consecutivo");
            }
            //  listarEspecificaciones(request, response);
            listarUsuarios(request, response);

        } catch (IOException | NumberFormatException | ServletException ex) {
            request.setAttribute("mensaje", "Error al actualizar el reporte: " + ex.getMessage());
            listarUsuarios(request, response);
        }
    }

    private void editarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Obtener el ID del parámetro de solicitud y almacenarlo en la variable de instancia
            ide = Integer.parseInt(request.getParameter("id"));
            Usuarios u = DaoUsuarios.obtenerUsuarioPorId(ide);
            request.setAttribute("User", u);

            listarUsuarios2(request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al editar el Consecutivo");
            listarUsuarios2(request, response);
        }
    }

    private void actualizarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Utilizar la variable de instancia para obtener el ID
            Usuarios u = DaoUsuarios.obtenerUsuarioPorId(ide);
            request.setAttribute("User", u);

            // Resto del código para actualizar el User
            String nombres = request.getParameter("txtNombre");
            String txtUser = request.getParameter("txtUser");
            String correo = request.getParameter("txtCorreo");
            String clave2 = request.getParameter("txtClave");
            int PerfilIdperfil = Integer.parseInt(request.getParameter("txtperfil"));
            int Subred = Integer.parseInt(request.getParameter("txtSubred"));
            //int txtid = Integer.parseInt(request.getParameter("txtid")); // Aca no se requiere esto

            //. Cargar el objeto de tipo Usuarios
            Usuarios usuarios = new Usuarios();

            usuarios.setNombres(nombres);
            usuarios.setUsuario(txtUser);
            usuarios.setCorreo(correo);
            usuarios.setClave(clave2);
            usuarios.setPerfilId(PerfilIdperfil);
            usuarios.setEntidadId(Subred);
            usuarios.setIdUsuario(ide); // El id se le pasa directamentecon la variable que ya capturo el id

            boolean actualizacionExitosa = DaoUsuarios.editar(usuarios);

            if (actualizacionExitosa) {
                request.setAttribute("mensaje", "Consecutivo actualizado correctamente");
            } else {
                request.setAttribute("mensaje", "No se pudo actualizar el Consecutivo");
            }

            listarUsuarios2(request, response);

        } catch (IOException | NumberFormatException | ServletException ex) {
            request.setAttribute("mensaje", "Error al actualizar el Consecutivo: " + ex.getMessage());
            listarUsuarios2(request, response);
        }
    }

    /*
    private void buscarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String texto = request.getParameter("txtbuscar");
            List<Usuarios> lt = DaoUsuarios.Buscar(texto);
            request.setAttribute("listaUsuarios", lt);
            request.getRequestDispatcher("Vistas/ListarUsuarios.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al buscar los Consecutivos");
            request.getRequestDispatcher("Vistas/ListarUsuarios.jsp").forward(request, response);
        }
    }*/
    private void eliminarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int idUsuarios = Integer.parseInt(request.getParameter("id"));

            if (DaoUsuarios.eliminar(idUsuarios)) {
                request.setAttribute("mensaje", "El Usuario fue Eliminado Correctamente");
            } else {
                request.setAttribute("mensaje", "No se pudo eliminar el usuario");
            }

            listarUsuarios(request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al eliminar el Consecutivo");
            listarUsuarios(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
