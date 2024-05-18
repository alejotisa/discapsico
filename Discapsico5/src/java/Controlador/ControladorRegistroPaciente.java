/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.RegistroPaciente;
import Modelo.TestCaldas;
import Modelo.Usuarios;
import Persistencia.DaoRegistroPaciente;
import Persistencia.DaoTestCaldas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


   
@WebServlet(name = "ControladorRegistroPaciente", urlPatterns = {"/ControladorRegistroPaciente"})
public class ControladorRegistroPaciente extends HttpServlet {

      static Usuarios usuarioLog = new Usuarios();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(" <*> Controlador Registro Pacientes ");

        String action = request.getParameter("accion");
        System.out.println(" <*> Controlador Registro Personas " + action);

        switch (action) {

            case "RegistroPaciente":
                registropaciente(request, response);
                break;
            case "ConsultarRegistroPaciente":
                consultarregistropaciente(request, response);
                RequestDispatcher dispatcher = request.getRequestDispatcher("Vistas/consultarRegistro.jsp");
                dispatcher.forward(request, response);

                break;
            case "ActualizarRegistroPaciente":
                consultarregistropaciente(request, response);
                RequestDispatcher dispatcher2 = request.getRequestDispatcher("Vistas/actualizaDatosPaciente.jsp");
                dispatcher2.forward(request, response);
                break;

            case "EditarRegistroPaciente":
                editarregistropaciente(request, response);
                RequestDispatcher dispatcher3 = request.getRequestDispatcher("Vistas/consultarRegistro.jsp");
                dispatcher3.forward(request, response);
                break;
            case "ConsultarEliminarRegistroPaciente":
                consultarregistropaciente(request, response);
                RequestDispatcher dispatcher4 = request.getRequestDispatcher("Vistas//borrarRegistro.jsp");
                dispatcher4.forward(request, response);

                break;
         case "EliminarRegistroPaciente":           
            eliminarregistropaciente(request, response);
            
           break;

        
        }
    }

    private void registropaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Capturar la info del Formulario
            System.out.println(" <*> Controlador Registro Paciente metodo ");
            
            HttpSession session = request.getSession();
            Usuarios usuarioLog= (Usuarios) session.getAttribute("usuarioLog");
            System.out.println("asdf "  + usuarioLog.getNombres() + " -z  " + usuarioLog.getIdUsuario());
            int usuarios_IdUsuario = usuarioLog.getIdUsuario();
            String primerNombre = request.getParameter("txtprimerNombre");
            String segundoNombre = request.getParameter("txtsegundoNombre");
            String primerApellido = request.getParameter("txtprimerApellido");
            String segundoApellido = request.getParameter("txtsegundoApellido");
            int IdTipoDocumento = Integer.parseInt(request.getParameter("txtIdTipoDocumento"));
            String numDocumento = request.getParameter("txtnumDocumento");
            long numCelular = Long.parseLong(request.getParameter("txtNumCel"));
            long numTelefono = Long.parseLong(request.getParameter("txtnumTelefono"));
            String email = request.getParameter("txtemail");
            String direccion = request.getParameter("txtdireccion");
            String upz = request.getParameter("txtupz");
            String barrio = request.getParameter("txtbarrio");
            String localidad = request.getParameter("txtlocalidad");

            //. Cargar el objeto de tipo PACIENTE
            RegistroPaciente registropaciente = new RegistroPaciente();

            registropaciente.setUsuarios_IdUsuario(usuarios_IdUsuario);
            registropaciente.setPrimerNombre(primerNombre);
            registropaciente.setSegundoNombre(segundoNombre);
            registropaciente.setPrimerApellido(primerApellido);
            registropaciente.setSegundoApellido(segundoApellido);
            registropaciente.setIdTipoDocumento(IdTipoDocumento);
            registropaciente.setNumDocumento(numDocumento);
            registropaciente.setNumTelefono(numTelefono);
            registropaciente.setNumCelular(numCelular);
            registropaciente.setEmail(email);
            registropaciente.setDireccion(direccion);
            registropaciente.setUpz(upz);
            registropaciente.setBarrio(barrio);
            registropaciente.setLocalidad(localidad);

            //. Guardar la informacion en BD
            if (DaoRegistroPaciente.grabar(registropaciente)) {
                System.out.println(" <*> el paciente fue registrado  |11");
                request.setAttribute("mensaje", "el paciente fue registrado");                
                request.getRequestDispatcher("Vistas/testcaldas.jsp").forward(request, response);
                
            } else {
                System.out.println(" <*> el paciente no fue registrado  |22");
                request.setAttribute("error", true);
                request.setAttribute("mensaje", "el paciente no fue registrado, validar campos ingresados");                
                request.getRequestDispatcher("Vistas/registropaciente.jsp").forward(request, response);
                
            }

           
        } catch (Exception ex) {
            System.out.println(" <*> Error al registrar el Consecutivo " + ex);
            ex.printStackTrace();
           request.setAttribute("error", true);
                request.setAttribute("mensaje", "el paciente no fue registrado, Error base de datos");                
                request.getRequestDispatcher("Vistas/registropaciente.jsp").forward(request, response);

            //listarUsuarios2(request, response);
        }
    }

    private void consultarregistropaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Capturar la info del Formulario
            System.out.println(" <*> Controlador Consulta Registro Paciente metodo get " + request.getParameter("txtnumDocumento") );

            String numDocumento = request.getParameter("txtnumDocumento");

            //. Consultar la informacion en BD
            RegistroPaciente registropaciente = new RegistroPaciente();
            TestCaldas consultaTestCaldas = new TestCaldas();

            registropaciente = DaoRegistroPaciente.consultar(numDocumento);
            request.setAttribute("registropaciente", registropaciente);

            consultaTestCaldas = DaoTestCaldas.consultar(numDocumento);
            request.setAttribute("consultarTestCaldas", consultaTestCaldas);
            request.setAttribute("mensaje", "el paciente fue encontrado");
            
            System.out.println(" <*> consulta exitosa" + registropaciente.getNumDocumento());
            
        } catch (Exception ex) {
            System.out.println(" <*> Error al registrar el Consecutivo " + ex);
            ex.printStackTrace();
            request.setAttribute("error", true);
            request.setAttribute("mensaje", "Error al consultar Paciente");
            
        }
    }

// Editar informacion captada
    private void editarregistropaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Capturar la info del Formulario
            System.out.println(" <*> Controlador Registro Paciente metodo editar ");
            int usuarios_IdUsuario = 1;
            String primerNombre = request.getParameter("txtprimerNombre");
            String segundoNombre = request.getParameter("txtsegundoNombre");
            String primerApellido = request.getParameter("txtprimerApellido");
            String segundoApellido = request.getParameter("txtsegundoApellido");
            int IdTipoDocumento = Integer.parseInt(request.getParameter("txtIdTipoDocumento"));
            String numDocumento = request.getParameter("txtnumDocumento");
            long numCelular = Long.parseLong(request.getParameter("txtnumCelular"));
            long numTelefono = Long.parseLong(request.getParameter("txtnumTelefono"));
            String email = request.getParameter("txtemail");
            String direccion = request.getParameter("txtdireccion");
            String upz = request.getParameter("txtupz");
            String barrio = request.getParameter("txtbarrio");
            String localidad = request.getParameter("txtlocalidad");

            //. Crear modelo paciente de actualizacion
            RegistroPaciente registropaciente = new RegistroPaciente();

            registropaciente.setUsuarios_IdUsuario(usuarios_IdUsuario);
            registropaciente.setPrimerNombre(primerNombre);
            registropaciente.setSegundoNombre(segundoNombre);
            registropaciente.setPrimerApellido(primerApellido);
            registropaciente.setSegundoApellido(segundoApellido);
            registropaciente.setIdTipoDocumento(IdTipoDocumento);
            registropaciente.setNumDocumento(numDocumento);
            registropaciente.setNumTelefono(numTelefono);
            registropaciente.setNumCelular(numCelular);
            registropaciente.setEmail(email);
            registropaciente.setDireccion(direccion);
            registropaciente.setUpz(upz);
            registropaciente.setBarrio(barrio);
            registropaciente.setLocalidad(localidad);

            //. Guardar la informacion en BD
            if (DaoRegistroPaciente.editar(registropaciente)) {
                System.out.println(" <*> el paciente fue registrado  200");
                request.setAttribute("mensaje", "el paciente fue registrado");
                request.setAttribute("registropaciente", registropaciente);
                
            } else {
                System.out.println(" <*> el paciente no fue registrado  |22");
                request.setAttribute("mensaje", "el paciente no fue registrado, validar campos ingresados");
            }

            //listarUsuarios2(request, response);
        } catch (Exception ex) {
            System.out.println(" <*> Error al registrar el Consecutivo " + ex);
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al registrar el Consecutivo");
            //listarUsuarios2(request, response);
        }
    }
    
    
    private void eliminarregistropaciente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        try {
            // Capturar la info del Formulario
            System.out.println(" <*> Controlador eEiminar Registro Paciente metodo get " + request.getParameter("numDocumento") );

            String numDocumento = request.getParameter("numDocumento");

            //. Consultar la informacion en BD
            String mensaje;
             if (DaoRegistroPaciente.eliminar(numDocumento)) {                
               mensaje = "El paciente fue eliminado exitosamente";
            } else {                
                 mensaje = "No se pudo eliminar el paciente, por favor verifica los datos ingresados";
            }
             if (DaoTestCaldas.eliminar(numDocumento)) {                
               mensaje = mensaje +  ". El Test de Caldas del paciente fue eliminado exitosamente";
            } else {                
                 mensaje =  mensaje + ". No se pudo eliminar el Test de Caldas, por favor verifica los datos ingresados";
            }
             
             response.getWriter().write(mensaje);
            
        } catch (Exception ex) {
            System.out.println(" <*> Error al registrar el Consecutivo " + ex);
            ex.printStackTrace();
            request.setAttribute("mensaje", "Error al registrar el Consecutivo");
            //listarUsuarios2(request, response);
        }
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(" <*> Controlador Registro Personas ");
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}