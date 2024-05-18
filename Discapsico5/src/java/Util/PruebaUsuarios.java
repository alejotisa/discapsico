package Util;

import Modelo.Usuarios;
import static Persistencia.DaoPerfil.obtenerNombrePerfil;
import static Persistencia.DaoTipoEntidad.listar;
import Persistencia.DaoUsuarios;
import java.util.Iterator;
import java.util.List;

public class PruebaUsuarios {

    //Metodo de prueba para Listar Usuario
    public static void main(String[] args) {
        // Llamando al método listar y obteniendo la lista de usuarios
        List<Usuarios> usuariosList = DaoUsuarios.listar();

        // Iterando sobre la lista de usuarios para imprimir los detalles
        for (Usuarios usuario : usuariosList) {
            System.out.println("ID: " + usuario.getIdUsuario());
            System.out.println("Nombres: " + usuario.getNombres());
            System.out.println("Usuario: " + usuario.getUsuario());
            System.out.println("Clave: " + usuario.getClave());
            System.out.println("Correo: " + usuario.getCorreo());
            System.out.println("Perfil ID: " + usuario.getPerfilId());
            System.out.println("Entidad ID: " + usuario.getEntidadId());
            System.out.println("---------------------");
        }
    }

    /*  public static void main(String[] args) {
    // Supongamos que idPerfil a validar es 1
    int idPerfil = 1;
    
    // Llamada al método obtenerNombrePerfil
    String nombrePerfil = obtenerNombrePerfil(idPerfil);
    
    // Mostrar el resultado
    System.out.println("El nombre del perfil con id " + idPerfil + " es: " + nombrePerfil);
}


    //Metodo de prueba Registrar  Usuario
    /* public static void main(String[] args) {

        // Crear una instancia de tu clase DAO
     DaoUsuarios daoUsuarios = new DaoUsuarios();
     
        Usuarios usu = new Usuarios();

        Scanner Leer = new java.util.Scanner(System.in);

        String nomb = "";
        String correo = "";
        String usuario = "";
        String clave = "";
        int perfil = 0;
        int entidad = 0;

        System.out.println("Por favor, nombre");
        nomb = Leer.nextLine();
        System.out.println("Por favor, correo");
        correo = Leer.nextLine();
        System.out.println("Por favor, usuario");
        usuario = Leer.nextLine();
        System.out.println("Por favor, clave");
        clave = Leer.nextLine();
        System.out.println("Por favor, nombre");
        perfil = Leer.nextInt();
        System.out.println("Por favor, nombre");
        entidad = Leer.nextInt();

        usu.setNombres(nomb);
        usu.setCorreo(correo);
        usu.setUsuario(usuario);
        usu.setClave(clave);
        usu.setPerfilId(perfil);
        usu.setEntidadId(entidad);

        boolean respuesta = DaoUsuarios.grabar(usu);

        if (respuesta == true) {

            System.out.println("Registro Exitoso");
        } else {
            System.out.println("Error en el Registro");
        }

    }*/
}
