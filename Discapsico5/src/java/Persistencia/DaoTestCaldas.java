/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Modelo.TestCaldas;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

   public class DaoTestCaldas {
    
    static Conexion cn = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;
     
    static TestCaldas testcaldas = new TestCaldas();
    
    public static boolean grabar(TestCaldas respuestas) {
       try {
            con = cn.Conectar();
             String sql = "INSERT INTO testcaldas (numDocumento, fechaCaracterizacion, pregunta1, pregunta2, "
                     + "pregunta3, pregunta4, pregunta5, pregunta6, pregunta7,  pregunta8, pregunta9, pregunta10, "
                     + "pregunta11, pregunta12, pregunta13, pregunta14, totalAT, totalDPE, totalDS, sumatoriaTotal) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
               ps = con.prepareStatement(sql); 
        
            ps.setString(1, respuestas.getNumDocumento());
            ps.setDate(2, respuestas.getFechaCaracterizacion());
            ps.setInt(3, respuestas.getPregunta1());
             ps.setInt(4, respuestas.getPregunta2());
            ps.setInt(5, respuestas.getPregunta3());
            ps.setInt(6, respuestas.getPregunta4());
            ps.setInt(7, respuestas.getPregunta5());
            ps.setInt(8, respuestas.getPregunta6());
            ps.setInt(9, respuestas.getPregunta7());
            ps.setInt(10, respuestas.getPregunta8());
            ps.setInt(11, respuestas.getPregunta9());
            ps.setInt(12, respuestas.getPregunta10());
            ps.setInt(13, respuestas.getPregunta11());
            ps.setInt(14, respuestas.getPregunta12());
            ps.setInt(15, respuestas.getPregunta13());
            ps.setInt(16, respuestas.getPregunta14());
            ps.setInt(17, respuestas.getTotalAT());
            ps.setInt(18, respuestas.getTotalDPE()); 
            ps.setInt(19, respuestas.getTotalDS());
            ps.setInt(20, respuestas.getSumatoriaTotal());
            
            
      if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            System.out.println("error en grabar SQL  " + e);
        }
        return false;
      }
    
    
    
    // Metodo  para Consultar
    public static TestCaldas consultar(String numDocumento) throws SQLException {
        TestCaldas tc = null;

        String sql = "SELECT * FROM testcaldas WHERE numDocumento=?";

        try (Connection con = cn.Conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, numDocumento);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    tc = new TestCaldas();
                    tc.setNumDocumento(rs.getString("numDocumento"));
                                 
                    tc.setFechaCaracterizacion(rs.getDate("fechaCaracterizacion"));
                    
                    tc.setPregunta1(rs.getInt("pregunta1"));
                    tc.setPregunta2(rs.getInt("pregunta2"));
                    tc.setPregunta3(rs.getInt("pregunta3"));
                    tc.setPregunta4(rs.getInt("pregunta4"));
                    tc.setPregunta5(rs.getInt("pregunta5"));
                    tc.setPregunta6(rs.getInt("pregunta6"));
                    tc.setPregunta7(rs.getInt("pregunta7"));
                    tc.setPregunta8(rs.getInt("pregunta8"));
                    tc.setPregunta9(rs.getInt("pregunta9"));
                    tc.setPregunta10(rs.getInt("pregunta10"));
                    tc.setPregunta11(rs.getInt("pregunta11"));
                    tc.setPregunta12(rs.getInt("pregunta12"));
                    tc.setPregunta13(rs.getInt("pregunta13"));
                    tc.setPregunta14(rs.getInt("pregunta14"));          
                    tc.setTotalAT(rs.getInt("totalAT"));
                    tc.setTotalDPE(rs.getInt("totalDPE"));
                    tc.setTotalDS(rs.getInt("totalDS"));
                    tc.setSumatoriaTotal(rs.getInt("sumatoriaTotal"));
                             
                }
            }
        } catch (SQLException ex) {
            // Registra el error sin mostrar detalles al usuario
            Logger.getLogger(DaoTestCaldas.class
                    .getName()).log(Level.SEVERE, "Error al acceder a la base de datos", ex);
            
        }

        return tc;
    }
public static boolean eliminar(String numDocumento) {
        try {
            con = cn.Conectar();
            String sql = "DELETE FROM testcaldas WHERE numDocumento =? ";
            ps = con.prepareStatement(sql);
            ps.setString(1, numDocumento);

            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Maneja las excepciones de mejor manera, por ejemplo, lanzando una excepción personalizada.
            System.out.println("error en grabar SQL  " + e);
        } finally {
            cerrarRecursos();
        }
        return false;
    }
    
    
    // Agrega este método para cerrar las conexiones y recursos
    private static void cerrarRecursos() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
