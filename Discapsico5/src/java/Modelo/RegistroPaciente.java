/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;



public class RegistroPaciente {

    private int usuarios_IdUsuario;
    private String primerNombre;
    private String segundoNombre;
    private String primerApellido;
    private String segundoApellido;
    private int IdTipoDocumento;
    private String numDocumento;
    private long numTelefono;
    private long numCelular;
    private String email;
    private String direccion;
    private String upz;
    private String barrio;
    private String localidad;
  

  
/*
    
    public RegistroPaciente(int usuarios_IdUsuario, String primerNombre, String segundoNombre, String primerApellido, String segundoApellido, int IdTipoDocumento, String numDocumento, int numTelefono, int numCelular, String email, String direccion, String upz, String barrio, String localidad) {
        this.usuarios_IdUsuario = usuarios_IdUsuario;
        this.primerNombre = primerNombre;
        this.segundoNombre = segundoNombre;
        this.primerApellido = primerApellido;
        this.segundoApellido = segundoApellido;
        this.IdTipoDocumento = IdTipoDocumento;
        this.numDocumento = numDocumento;
        this.numTelefono = numTelefono;
        this.numCelular = numCelular;
        this.email = email;
        this.direccion = direccion;
        this.upz = upz;
        this.barrio = barrio;
        this.localidad = localidad;
      
         
    }
     // Getters y Setters
    
    
    /*
        public RegistroPaciente() {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }
    */

    public int getUsuarios_IdUsuario() {
        return usuarios_IdUsuario;
    }

    public void setUsuarios_IdUsuario(int usuarios_IdUsuario) {
        this.usuarios_IdUsuario = usuarios_IdUsuario;
    }

    public String getPrimerNombre() {
        return primerNombre;
    }

    public void setPrimerNombre(String primerNombre) {
        this.primerNombre = primerNombre;
    }

    public String getSegundoNombre() {
        return segundoNombre;
    }

    public void setSegundoNombre(String segundoNombre) {
        this.segundoNombre = segundoNombre;
    }

    public String getPrimerApellido() {
        return primerApellido;
    }

    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }

    public String getSegundoApellido() {
        return segundoApellido;
    }

    public void setSegundoApellido(String segundoApellido) {
        this.segundoApellido = segundoApellido;
    }

    public int getIdTipoDocumento() {
        return IdTipoDocumento;
    }

    public void setIdTipoDocumento(int IdTipoDocumento) {
        this.IdTipoDocumento = IdTipoDocumento;
    }

    public String getNumDocumento() {
        return numDocumento;
    }

    public void setNumDocumento(String numDocumento) {
        this.numDocumento = numDocumento;
    }

    public long getNumTelefono() {
        return numTelefono;
    }

    public void setNumTelefono(Long numTelefono) {
        this.numTelefono = numTelefono;
    }

    public long getNumCelular() {
        return numCelular;
    }

    public void setNumCelular(Long numCelular) {
        this.numCelular = numCelular;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getUpz() {
        return upz;
    }

    public void setUpz(String upz) {
        this.upz = upz;
    }

    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }
    
    
}
