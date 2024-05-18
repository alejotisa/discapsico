/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Modelo.RegistroPaciente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoRegistroPaciente {

    static Conexion cn = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;
    
    //Creamos un objeto de tipo Persona (Modelo)
    static RegistroPaciente registropaciente = new RegistroPaciente();
    
      public static boolean grabar(RegistroPaciente registropaciente) {
        try {
            con = cn.Conectar();
             String sql = "INSERT INTO persona (usuarios_IdUsuario, primerNombre, segundoNombre, primerApellido, segundoApellido, IdTipoDocumento, numDocumento, numTelefono, numCelular, email, direccion, upz, barrio, localidad) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
               ps = con.prepareStatement(sql);
               
              
               ps.setInt(1, registropaciente.getUsuarios_IdUsuario());
               ps.setString(2, registropaciente.getPrimerNombre());
               ps.setString(3, registropaciente.getSegundoNombre());
               ps.setString(4, registropaciente.getPrimerApellido());
               ps.setString(5, registropaciente.getSegundoApellido());
               ps.setInt(6, registropaciente.getIdTipoDocumento());
               ps.setString(7, registropaciente.getNumDocumento());
               ps.setLong(8, registropaciente.getNumTelefono());
               ps.setLong(9, registropaciente.getNumCelular());
               ps.setString(10, registropaciente.getEmail());
               ps.setString(11, registropaciente.getDireccion());
               ps.setString(12, registropaciente.getUpz());
              ps.setString(13, registropaciente.getBarrio());
              ps.setString(14, registropaciente.getLocalidad());
  
        if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
                System.out.println("error en grabar SQL  " + e);
        }
        return false;
      }
      
       // Metodo  para Consultar
    public static RegistroPaciente consultar(String numDocumento) {
        RegistroPaciente paciente = null;

        String sql = "SELECT * FROM persona WHERE numDocumento=?";

        try (Connection con = cn.Conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, numDocumento);

            try (ResultSet rs = ps.executeQuery()) {
                
                if (rs == null) {
    System.out.println("ResultSet is null");
} 

                //ResultSetMetaData rsmd = rs.getMetaData();
    int columnCount = rs.getMetaData().getColumnCount();

    // Los índices de las columnas comienzan desde 1
    for (int i = 1; i <= columnCount; i++) {
        String columnName = rs.getMetaData().getColumnName(i);
        System.out.println("Nombre de la columna " + i + ": " + columnName);
    }
                while (rs.next()) {
                    paciente = new RegistroPaciente();
                    paciente.setNumDocumento(rs.getString("numDocumento"));
                    paciente.setPrimerNombre(rs.getString("primerNombre"));
                    paciente.setSegundoNombre(rs.getString("segundoNombre"));
                    paciente.setPrimerApellido(rs.getString("primerApellido"));
                    paciente.setSegundoApellido(rs.getString("segundoApellido"));
                    paciente.setIdTipoDocumento(rs.getInt("IdTipoDocumento"));
                    paciente.setNumTelefono(rs.getLong("numTelefono"));
                    paciente.setNumCelular(rs.getLong("numCelular"));
                    paciente.setEmail(rs.getString("email"));
                    paciente.setDireccion(rs.getString("direccion"));
                    paciente.setUpz(rs.getString("upz"));
                    paciente.setBarrio(rs.getString("barrio"));
                    paciente.setLocalidad(rs.getString("localidad"));
                }
            }
        } catch (SQLException ex) {
            // Registra el error sin mostrar detalles al usuario
            Logger.getLogger(DaoRegistroPaciente.class
                    .getName()).log(Level.SEVERE, "Error al acceder a la base de datos", ex);
            
        }

        return paciente;
    }
    
      public static boolean editar(RegistroPaciente registropaciente) {
        try {
            con = cn.Conectar();
             String sql = "UPDATE persona SET usuarios_IdUsuario = ?, primerNombre  = ?, segundoNombre  = ?, primerApellido  = ?, "
                     + "segundoApellido  = ?, IdTipoDocumento  = ?, numDocumento  = ?, numTelefono  = ?, numCelular = ?, email= ?, direccion= ?, upz= ?, barrio= ?, localidad= ? "
                     + "WHERE numDocumento =? ";
               ps = con.prepareStatement(sql);
               
                 // ** NO OLVIDAR CONFIGURAR LA FK  DEL ID USUARIO DEL QUE ESTA REGISTRANDO EL PACIENTE **
               ps.setInt(1, registropaciente.getUsuarios_IdUsuario());
               ps.setString(2, registropaciente.getPrimerNombre());
               ps.setString(3, registropaciente.getSegundoNombre());
               ps.setString(4, registropaciente.getPrimerApellido());
               ps.setString(5, registropaciente.getSegundoApellido());
               ps.setInt(6, registropaciente.getIdTipoDocumento());
               ps.setString(7, registropaciente.getNumDocumento());
               ps.setLong(8, registropaciente.getNumTelefono());
               ps.setLong(9, registropaciente.getNumCelular());
               ps.setString(10, registropaciente.getEmail());
               ps.setString(11, registropaciente.getDireccion());
               ps.setString(12, registropaciente.getUpz());
              ps.setString(13, registropaciente.getBarrio());
              ps.setString(14, registropaciente.getLocalidad());
              ps.setString(15, registropaciente.getNumDocumento());
              
        if (ps.executeUpdate() > 0) {
                return true;
            } else {
            System.out.println("error en grabar SQL  " + ps.executeUpdate());
                return false;
            }
        } catch (Exception e) {
            System.out.println("error en grabar SQL  " + e);
        }
        return false;
      }
      
      public static boolean eliminar(String numDocumento) {
        try {
            con = cn.Conectar();
            String sql = "DELETE FROM persona WHERE numDocumento =? ";
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
