package Controlador;

import Modelo.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Persistencia.DaoUsuarios;
import javax.servlet.http.HttpSession;

public class Controlador extends HttpServlet {

    
     static Usuarios usuarioLog = new Usuarios();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("**-  -> llegue a requestt");
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet controlador aiudaaa at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            request.getRequestDispatcher("principal.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("**-  -> llegue a doget");

        String action = request.getParameter("accion");

        switch (action) {

            case "home":

                request.getRequestDispatcher("/Vistas/home.jsp").forward(request, response);
                break;

            case "crearRegistro":

                request.getRequestDispatcher("/Vistas/registropaciente.jsp").forward(request, response);
                break;

            case "consultarRegistro":

                request.getRequestDispatcher("/Vistas/consultarRegistro.jsp").forward(request, response);
                break;

            case "cerrarSesion":

                request.getRequestDispatcher("/Vistas/cerrarSesion.jsp").forward(request, response);
                break;

            case "actualizaDatosP":

                request.getRequestDispatcher("/Vistas/actualizaDatosPaciente.jsp").forward(request, response);
                break;

            case "borrarRegistroP":

                request.getRequestDispatcher("/Vistas/borrarRegistro.jsp").forward(request, response);
                break;

            case "cover":

                request.getRequestDispatcher("/Vistas/cover.jsp").forward(request, response);
                break;

            case "resumenInformes":

                request.getRequestDispatcher("/Vistas/resumenInforrmes.jsp").forward(request, response);
                break;

            case "exportar":

                request.getRequestDispatcher("/Vistas/exportar.jsp").forward(request, response);
                break;

            case "puntajeTestCal":

                request.getRequestDispatcher("/Vistas/puntajeTestCaldas.jsp").forward(request, response);
                break;

            case "testCaldas":

                request.getRequestDispatcher("/Vistas/testcaldas.jsp").forward(request, response);
                break;

            case "guardarCambios":

                request.getRequestDispatcher("/Vistas/guardarCambios.jsp").forward(request, response);
                break;

            case "guardarTest":

                request.getRequestDispatcher("/Vistas/guardarTest.jsp").forward(request, response);
                break;

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("**-  -> llegue a dopost");

        String action = request.getParameter("accion");

        switch (action) {
            case "home":

                request.getRequestDispatcher("/Vistas/home.jsp").forward(request, response);
                break;

            case "Ingresar":

                iniciarSesion(request, response);
                break;

        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    private void iniciarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Capturar la info del Formulario

            String email = request.getParameter("txtEmail");
            String password = request.getParameter("txtPassword");
        

            //. Cargar el objeto de tipo Usuarios

            //. Guardar la informacion en BD
            usuarioLog=DaoUsuarios.iniciarSesion(email, password);
            
            if (usuarioLog.getCorreo().equals(email) && usuarioLog.getClave().equals(password)){
                HttpSession session = request.getSession();
            session.setAttribute("usuarioLog", usuarioLog);
            session.setAttribute("usuarioName", usuarioLog.getNombres());
                request.getRequestDispatcher("/Vistas/home.jsp").forward(request, response);
                
            } else {
                
                request.setAttribute("error", true);
                request.setAttribute("mensaje", "No se encuentro usuario, comprobar correo y contraseña");
                request.getRequestDispatcher("Vistas/iniciosesion.jsp").forward(request, response);
                
            }


        } catch (Exception ex) {
            ex.printStackTrace();
            
            System.out.println("error  " + ex);
            request.setAttribute("error", true);
            request.setAttribute("mensaje", "No se encuentro usuario, comprobar correo y contraseña");            
                request.getRequestDispatcher("Vistas/iniciosesion.jsp").forward(request, response);
            
        }
    }
    
    

}



