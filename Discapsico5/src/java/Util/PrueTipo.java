package Util;

import Modelo.TipoEntidad;
import Persistencia.DaoTipoEntidad;
import java.util.Scanner;

public class PrueTipo {

    public static void main(String[] args) {
        // Crear una instancia de tu clase DAO
        DaoTipoEntidad daoTipoEntidad = new DaoTipoEntidad();
        TipoEntidad tipoEntidad = new TipoEntidad();

        Scanner Leer = new java.util.Scanner(System.in);

        String nomb = "";

        System.out.println("Por favor, producto");
        nomb = Leer.nextLine();

        tipoEntidad.setTipoEntidad(nomb);

        boolean respuesta = daoTipoEntidad.registrar(tipoEntidad);

        if (respuesta == true) {

            System.out.println("Registro Exitoso");
        } else {
            System.out.println("Error en el Registro");
        }

    }

}
