package Persistencia;

import Modelo.Entidad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoEntidad {

    static Conexion dao = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;
    static Entidad entidad = new Entidad();
//pendiente crear metodo

    public static boolean grabarEntidad(Entidad entidad) {
        try {
            con = dao.Conectar();
            String sql = "INSERT INTO consecutivo(nroRemision, nroConsecutivo, idespecificaciones, "
                    + "fechaCertificado, fechaProduccion, cantidadMaterial, idUsuarios, lote) "
                    + "VALUES(?,?,?,?,?,?,?,?);";
            ps = con.prepareStatement(sql);

            /*   ps.setString(1, consecutivo.getNroRemision());
            ps.setInt(2, consecutivo.getNroConsecutivo());
            ps.setInt(3, consecutivo.getIdEspecificaciones());
            ps.setString(4, consecutivo.getFechaCertificado());
            ps.setString(5, consecutivo.getFechaProduccion());
            ps.setInt(6, consecutivo.getCantidadMaterial());
            ps.setInt(7, consecutivo.getIdUsuarios());
            ps.setString(8, consecutivo.getLote());*/
            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {

        } finally {
            cerrarRecursos();
        }
        return false;
    }
    //Se le paso como parametro el modelo Cosnsecutivo

    public static List<Entidad> listar() {
        List<Entidad> lista = new ArrayList<>();
        try {
            con = dao.Conectar();
            String sql = "SELECT * FROM entidad;";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Entidad entidad = new Entidad();

                entidad.setTipoEntidadId(rs.getInt("tipoEntidadId"));
                entidad.setNombreEntidad(rs.getString("nombreEntidad"));
                entidad.setRepresentanteLegal(rs.getString("representanteLegal"));
                entidad.setDireccion(rs.getString("direccion"));
                entidad.setTelefono(rs.getInt("telefono"));
                entidad.setEmail(rs.getString("email"));
                entidad.setNit(rs.getString("nit"));

                entidad.setIdEntidad(rs.getInt("IdEntidad"));

                lista.add(entidad);
            }
        } catch (Exception e) {
        } finally {
            cerrarRecursos();
        }
        return lista;
    }

    public static String obtenerNombreEntidad(int id) {
        try {
            con = dao.Conectar();
            String sql = "SELECT nombreEntidad FROM entidad WHERE IdEntidad?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("nombreEntidad");
            } else {
                return "--";
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoPerfil.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "--";
    }

    /*
    public static List<Consecutivo> listarConsecporIdControl(int idControlCalidad) {
        List<Consecutivo> lista = new ArrayList<>();
        try {
            con = dao.conectar();
           String sql = "SELECT cs.* " +
             "FROM controlcalidad C " +
             "INNER JOIN consecutivo cs ON C.idConsecutivo = cs.idconsecutivo " +
             "INNER JOIN especificaciones E ON E.idespecificaciones = cs.idespecificaciones " +
             "INNER JOIN productos pr ON pr.idProductos = E.idProductos " +
             "WHERE C.idControlCalidad = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, idControlCalidad);
            rs = ps.executeQuery();
            while (rs.next()) {
                Consecutivo entidad = new Consecutivo();

                entidad.setIdconsecutivo(rs.getInt("idconsecutivo"));
                entidad.setIdEspecificaciones(rs.getInt("idEspecificaciones"));
                entidad.setNroRemision(rs.getString("nroRemision"));
                entidad.setNroConsecutivo(rs.getInt("nroConsecutivo"));
                entidad.setFechaCertificado(rs.getString("fechaCertificado"));
                entidad.setFechaProduccion(rs.getString("fechaProduccion"));
                entidad.setCantidadMaterial(rs.getInt("cantidadMaterial"));
                entidad.setLote(rs.getString("lote"));
                entidad.setIdUsuarios(rs.getInt("idUsuarios"));

                lista.add(entidad);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Imprime el error para el registro
        } finally {
            cerrarRecursos();
        }
        return lista;
    }
     */
 /*
// Metodo Refactorizado para listar y editar 
    public static Consecutivo obtenerConsecutivoPorId(int id) {
        Consecutivo consecutivo = null;

        String sql = "SELECT * FROM consecutivo WHERE idconsecutivo =?";

        try (Connection con = dao.conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    consecutivo = new Consecutivo();

                    consecutivo.setIdconsecutivo(rs.getInt("idconsecutivo"));
                    consecutivo.setIdEspecificaciones(rs.getInt("idEspecificaciones"));
                    consecutivo.setNroRemision(rs.getString("nroRemision"));
                    consecutivo.setNroConsecutivo(rs.getInt("nroConsecutivo"));
                    consecutivo.setFechaCertificado(rs.getString("fechaCertificado"));
                    consecutivo.setFechaProduccion(rs.getString("fechaProduccion"));
                    consecutivo.setCantidadMaterial(rs.getInt("cantidadMaterial"));
                    consecutivo.setLote(rs.getString("lote"));
                    consecutivo.setIdUsuarios(rs.getInt("idUsuarios"));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoConsecutivo.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cerrarRecursos();
        }
        return consecutivo;
    }

    //Nota:Se debe manejar el mismo orden tanto en la asentencia Sql como en el ps
    public static boolean editar(Consecutivo consecutivo) {
        try {
            con = dao.conectar();
            String sql = "UPDATE consecutivo SET nroRemision = ?, nroConsecutivo = ?,"
                    + "idEspecificaciones = ?, fechaCertificado = ?, fechaProduccion = ?,"
                    + "cantidadMaterial= ?, idUsuarios= ?, lote= ? "
                    + "WHERE idconsecutivo = ?";

            ps = con.prepareStatement(sql);

            ps.setString(1, consecutivo.getNroRemision());
            ps.setInt(2, consecutivo.getNroConsecutivo());
            ps.setInt(3, consecutivo.getIdEspecificaciones());
            ps.setString(4, consecutivo.getFechaCertificado());
            ps.setString(5, consecutivo.getFechaProduccion());
            ps.setInt(6, consecutivo.getCantidadMaterial());
            ps.setInt(7, consecutivo.getIdUsuarios());
            ps.setString(8, consecutivo.getLote());
            ps.setInt(9, consecutivo.getIdconsecutivo());

            ps.executeUpdate();

            // Ejecutar la consulta de actualización
            int rowsAffected = ps.executeUpdate();

            // Verificar si se actualizó algún registro
            if (rowsAffected > 0) {
                return true; // La actualización fue exitosa
            }

        } catch (SQLException ex) {
            Logger.getLogger(DaoConsecutivo.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cerrarRecursos();
        }
        return false;
    }
     */
    public static boolean eliminar(int idconsecutivo) {
        try {
            con = dao.Conectar();
            String sql = "DELETE FROM consecutivo WHERE idconsecutivo=?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, idconsecutivo);

            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Maneja las excepciones de mejor manera, por ejemplo, lanzando una excepción personalizada.
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
