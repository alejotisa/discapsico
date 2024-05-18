package Persistencia;

import Modelo.TipoEntidad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoTipoEntidad {

    static Conexion conexion = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;

    public static boolean registrar(TipoEntidad tipoEntidad) {

        try {

            con = conexion.Conectar();
            String sql = "INSERT INTO tipoentidad(TipoEntidad)values(?) ";
            ps = con.prepareStatement(sql);
            ps.setString(1, tipoEntidad.getTipoEntidad());
            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoTipoEntidad.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public static List<TipoEntidad> listar() {
        List<TipoEntidad> listap = new ArrayList<>();
        try {
            con = conexion.Conectar();
            String sql = "SELECT * FROM TipoEntidad";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                TipoEntidad tipoEntidad = new TipoEntidad();
                tipoEntidad.setIdTipoEntidad(rs.getInt("IdTipoEntidad"));

                tipoEntidad.setTipoEntidad(rs.getString("tipoEntidad"));
                listap.add(tipoEntidad);
            }
        } catch (Exception e) {
        }
        return listap;
    }
    /*
    public int insertar(String TipoEntidad) {
        TipoEntidad tipe = new TipoEntidad();
        String sql = "INSERT INTO tipoentidad(TipoEntidad)values(?) ";
        try {
            con = cn.Conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, TipoEntidad);
            rowsAffected = ps.executeUpdate();
            System.out.println("TipoEntidadDAO: " + rowsAffected);
        } catch (SQLException e) {
            System.out.println("TipoEntidadDAO" + "Generó error: " + e);
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e);
            }
        }
        return rowsAffected;
    }
     */

}
