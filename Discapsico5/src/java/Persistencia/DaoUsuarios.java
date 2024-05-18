package Persistencia;

import Modelo.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoUsuarios {

    static Conexion cn = new Conexion();
    static Connection con;
    static PreparedStatement ps;
    static ResultSet rs;

    //Creamos un objeto de tipo Usuarios (Modelo)
    static Usuarios usuarios = new Usuarios();

    public static boolean grabar(Usuarios usuarios) {
        try {
            con = cn.Conectar();
            String sql = "INSERT INTO usuarios(nombres, correo, "
                    + "usuario, clave, perfilId, entidadId) "
                    + "VALUES(?,?,?,?,?,?);";
            ps = con.prepareStatement(sql);

            ps.setString(1, usuarios.getNombres());
            ps.setString(2, usuarios.getCorreo());
            ps.setString(3, usuarios.getUsuario());
            ps.setString(4, usuarios.getClave());
            ps.setInt(5, usuarios.getPerfilId());
            ps.setInt(6, usuarios.getEntidadId());

            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public static List<Usuarios> listar() {
        List<Usuarios> lista = new ArrayList<>();
        try {
            con = cn.Conectar();
            if (con != null) {
                String sql = "SELECT * FROM usuarios;";
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    Usuarios usuarios = new Usuarios();
                    usuarios.setIdUsuario(rs.getInt("idUsuario"));
                    usuarios.setNombres(rs.getString("nombres"));
                    usuarios.setUsuario(rs.getString("usuario"));
                    usuarios.setClave(rs.getString("clave"));
                    usuarios.setCorreo(rs.getString("correo"));
                    usuarios.setPerfilId(rs.getInt("perfilId"));
                    usuarios.setEntidadId(rs.getInt("entidadId"));
                    lista.add(usuarios);
                }
            } else {
                System.err.println("La conexión es nula");
            }
        } catch (SQLException e) {
            System.err.println("Error al ejecutar la consulta: " + e.getMessage());
        } finally {
            cerrarRecursos();
        }
        return lista;
    }
    
    

    public static Usuarios iniciarSesion(String email, String password) {
        Usuarios usuario = null;
        
        

        String sql = "SELECT * FROM usuarios WHERE correo=? and clave=?";

        try (Connection con = cn.Conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, email);
            ps.setString(2, password);
            
            try (ResultSet rs = ps.executeQuery()) {
               
                   while (rs.next()) {
                    usuario = new Usuarios();
                    usuario.setIdUsuario(rs.getInt("idUsuario"));
                    usuario.setNombres(rs.getString("nombres"));
                    usuario.setCorreo(rs.getString("correo"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setClave(rs.getString("clave"));
                    usuario.setPerfilId(rs.getInt("perfilId"));
                    usuario.setEntidadId(rs.getInt("entidadId"));

                
                   
               }
                
            }catch (Exception ex) {
            // Registra el error sin mostrar detalles al usuario
            Logger.getLogger(DaoUsuarios.class
                    .getName()).log(Level.SEVERE, "Error al leer los datos", ex);
            return usuario;

        }
        } catch (SQLException ex) {
            // Registra el error sin mostrar detalles al usuario
            Logger.getLogger(DaoUsuarios.class
                    .getName()).log(Level.SEVERE, "Error al acceder a la base de datos", ex);
            return usuario;

        }

        return usuario;
    }
    
    
    /*
    public static List<Usuarios> Buscar(String Texto) {
        List<Usuarios> lista = new ArrayList<>();
        try {
            con = cn.conectar();
            String sql = "SELECT * FROM usuarios WHERE  nombres_apellido LIKE ? ";

            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + Texto + "%");

            rs = ps.executeQuery();
            while (rs.next()) {
                Usuarios usuarios = new Usuarios();
                usuarios.setIdUsuarios(rs.getInt("idUsuarios"));
                usuarios.setNombres_apellido(rs.getString("nombres_apellido"));

                usuarios.setNumero_Telefono(rs.getString("numero_Telefono"));
                usuarios.setCorreo(rs.getString("correo"));
                usuarios.setUsuario(rs.getString("usuario"));
                usuarios.setClave(rs.getString("clave"));
                usuarios.setPerfil_idperfil(rs.getInt("idperfil"));

                lista.add(usuarios);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    // Metodo para validar usuario
     */
// Metodo  para listar y editar 
    public static Usuarios obtenerUsuarioPorId(int id) {
        Usuarios usuario = null;

        String sql = "SELECT * FROM usuarios WHERE idUsuario=?";

        try (Connection con = cn.Conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    usuario = new Usuarios();
                    usuario.setIdUsuario(rs.getInt("idUsuario"));
                    usuario.setNombres(rs.getString("nombres"));
                    usuario.setCorreo(rs.getString("correo"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setClave(rs.getString("clave"));
                    usuario.setPerfilId(rs.getInt("perfilId"));
                    usuario.setEntidadId(rs.getInt("entidadId"));

                }
            }
        } catch (SQLException ex) {
            // Registra el error sin mostrar detalles al usuario
            Logger.getLogger(DaoUsuarios.class
                    .getName()).log(Level.SEVERE, "Error al acceder a la base de datos", ex);

        }

        return usuario;
    }

    //Nota:Se debe manejar el mismo orden tanto en l asentencia Sql como en el ps
    public static boolean editar(Usuarios usuarios) {
        try {
            con = cn.Conectar();
            String sql = "UPDATE usuarios SET nombres = ?, "
                    + "correo =?, usuario =?, "
                    + "clave =?, perfilId =?, entidadId =? WHERE idUsuario =? ";

            ps = con.prepareStatement(sql);

            ps.setString(1, usuarios.getNombres());
            ps.setString(2, usuarios.getCorreo());
            ps.setString(3, usuarios.getUsuario());
            ps.setString(4, usuarios.getClave());
            ps.setInt(5, usuarios.getPerfilId());
            ps.setInt(6, usuarios.getEntidadId());
            ps.setInt(7, usuarios.getIdUsuario());

            ps.executeUpdate();

            // Ejecutar la consulta de actualización
            int rowsAffected = ps.executeUpdate();

            // Verificar si se actualizó algún registro
            if (rowsAffected > 0) {
                return true; // La actualización fue exitosa

            }

        } catch (SQLException ex) {
            Logger.getLogger(DaoUsuarios.class
                    .getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Cerrar recursos (conexión, declaración, etc.) en el bloque "finally"
            // para garantizar que se cierren incluso si ocurre una excepción.
            cerrarRecursos();
        }
        return false;
    }

    public static boolean eliminar(int idUsuario) {
        try {
            con = cn.Conectar();
            String sql = "DELETE FROM usuarios WHERE idUsuario= ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, idUsuario);

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

    /*
    public static String obtenerNombreUsuario(int id) {
        Metodo que sirve para obtener el nombre y poderlo listar en las tablas relacionadas
        Ejemplo: Tabla Listar Productos_Secos 
        <td><%= DaoUsuarios.obtenerNombreUsuario(terminadoseco.getUsuarios_idUsuarios())%></td> 
        try {
            con = cn.conectar();
            String sql = "SELECT nombres_apellido FROM usuarios WHERE idUsuarios=?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("nombres_apellido");
            } else {
                return "--";

            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoSeguimientos.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return "--";
    }

    public static String obtenerNombrePerfil(int id) {
        try {
            con = cn.conectar();
            String sql = "SELECT tipo_Perfil FROM perfil WHERE idperfil=?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("tipo_Perfil");
            } else {
                return "--";

            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoPerfil.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return "--";
    }*/

 /*
    
    //metodo jasypt para encriptar contraseña
    public Usuarios validarUsuario(String usuario, String clave) {
        Usuarios user = null;
        Encriptador en = new Encriptador();

        String sql = "SELECT * FROM usuarios WHERE usuario=? AND clave=?";

        try (Connection con = cn.conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, usuario);
            //  ps.setString(2, hashClave(clave)); // Utiliza una función hash para almacenar las contraseñas de manera segura            
            ps.setString(2, (en.desencriptar(clave)));
           // ps.setString(2, clave);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new Usuarios();
                    user.setIdUsuarios(rs.getInt("idUsuarios"));
                    user.setNombres_apellido(rs.getString("nombres_apellido"));
                    user.setNumero_Telefono(rs.getString("numero_Telefono"));
                    user.setCorreo(rs.getString("correo"));
                    user.setUsuario(rs.getString("usuario"));
                    user.setClave(rs.getString("clave")); // No es recomendable devolver la contraseña en el objeto Usuarios, pero lo mantengo por coherencia con tu código original
                    user.setPerfil_idperfil(rs.getInt("idperfil"));
                }
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            // Puedes agregar un mensaje de error adicional si es necesario
        } finally {
            cerrarRecursos(); // Asegúrate de cerrar los recursos de manera correcta
        }
        return user;

    }
     */
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

    public static List<Usuarios> listar(int idControlCalidad) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
