package Controlador;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import Modelo.RegistroPaciente;
import Modelo.TestCaldas;
import Persistencia.DaoTestCaldas;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONException;
import org.json.JSONObject;

@WebServlet(urlPatterns = {"/ControladorTestCaldas"})
public class ControladorTestCaldas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("ControladorTestCaldas post");

        try (BufferedReader reader = request.getReader()) {
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            String jsonString = sb.toString();
            JSONObject jsonObject = new JSONObject(jsonString);

            System.out.println("ControladorTestCaldas pregunta1: " + jsonObject.getString("pregunta1"));
            System.out.println("ControladorTestCaldas action " + jsonObject.getString("accion"));

            String action = jsonObject.getString("accion");
            switch (action) {
                case "TestCaldas":
                    testcaldas(request, response, jsonObject);
                    break;
                default:
                    // Acción desconocida
                    break;
            }
        } catch (JSONException e) {
            e.printStackTrace();
            // Manejar error de JSON
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(" <*> ControladorTestCaldas post ");
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    void testcaldas(HttpServletRequest request, HttpServletResponse response, JSONObject jsonObject)
    throws ServletException, IOException {
    try {
        // Capturar la info del Formulario
        System.out.println(" <*> Controlador Test Caldas metodo ");

        // Obtener valores del JSON
        int pregunta1 = jsonObject.getInt("pregunta1");
        int pregunta2 = jsonObject.getInt("pregunta2");
        int pregunta3 = jsonObject.getInt("pregunta3");
        int pregunta4 = jsonObject.getInt("pregunta4");
        int pregunta5 = jsonObject.getInt("pregunta5");
        int pregunta6 = jsonObject.getInt("pregunta6");
        int pregunta7 = jsonObject.getInt("pregunta7");
        int pregunta8 = jsonObject.getInt("pregunta8");
        int pregunta9 = jsonObject.getInt("pregunta9");
        int pregunta10 = jsonObject.getInt("pregunta10");
        int pregunta11 = jsonObject.getInt("pregunta11");
        int pregunta12 = jsonObject.getInt("pregunta12");
        int pregunta13 = jsonObject.getInt("pregunta13");
        int pregunta14 = jsonObject.getInt("pregunta14");
        int totalAT = jsonObject.getInt("totalAT");
        int totalDPE = jsonObject.getInt("totalDPE");
        int totalDS = jsonObject.getInt("totalDS");
        int sumatoriaTotal = jsonObject.getInt("sumatoriaTotal");

        // Cargar el objeto de tipo Test Caldas modelo
        TestCaldas testcaldas = new TestCaldas();
        HttpSession session = request.getSession();
        RegistroPaciente paciente = (RegistroPaciente) session.getAttribute("paciente");
        System.out.println("asdf " + paciente.getNumDocumento() + " -z  " + paciente.getPrimerNombre());

        testcaldas.setNumDocumento(paciente.getNumDocumento());
        testcaldas.setPregunta1(pregunta1);
        testcaldas.setPregunta2(pregunta2);
        testcaldas.setPregunta3(pregunta3);
        testcaldas.setPregunta4(pregunta4);
        testcaldas.setPregunta5(pregunta5);
        testcaldas.setPregunta6(pregunta6);
        testcaldas.setPregunta7(pregunta7);
        testcaldas.setPregunta8(pregunta8);
        testcaldas.setPregunta9(pregunta9);
        testcaldas.setPregunta10(pregunta10);
        testcaldas.setPregunta11(pregunta11);
        testcaldas.setPregunta12(pregunta12);
        testcaldas.setPregunta13(pregunta13);
        testcaldas.setPregunta14(pregunta14);
        testcaldas.setTotalAT(totalAT);
        testcaldas.setTotalDPE(totalDPE);
        
        testcaldas.setTotalDS(totalDS);
        testcaldas.setSumatoriaTotal(sumatoriaTotal);

        // Guardar la informacion en BD
        if (DaoTestCaldas.grabar(testcaldas)) {
            System.out.println(" <*> el paciente fue registrado  11");
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\":\"success\",\"message\":\"test de caldas para el usuario "+ paciente.getNumDocumento()+" fue registrado!, por favor vuelva al home\"}");
        } else {
            System.out.println(" <*> el paciente no fue registrado  22");
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"status\":\"error\",\"message\":\"el test no fue registrado, validar campos ingresados\"}");
        }
    } catch (Exception ex) {
        System.out.println(" <*> Error al registrar el Consecutivo " + ex);
        ex.printStackTrace();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"status\":\"error\",\"message\":\"el test no fue registrado, error Base de datos\"}");
    }
}


}
