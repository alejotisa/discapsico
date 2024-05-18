package Modelo;

public class Entidad {

    private int IdEntidad;
    private int tipoEntidadId;
    private String nombreEntidad;
    private String representanteLegal;
    private String direccion;
    private int telefono;
    private String email;
    private String nit;

    public int getIdEntidad() {
        return IdEntidad;
    }

    public void setIdEntidad(int IdEntidad) {
        this.IdEntidad = IdEntidad;
    }

    public int getTipoEntidadId() {
        return tipoEntidadId;
    }

    public void setTipoEntidadId(int tipoEntidadId) {
        this.tipoEntidadId = tipoEntidadId;
    }

    public String getNombreEntidad() {
        return nombreEntidad;
    }

    public void setNombreEntidad(String nombreEntidad) {
        this.nombreEntidad = nombreEntidad;
    }

    public String getRepresentanteLegal() {
        return representanteLegal;
    }

    public void setRepresentanteLegal(String representanteLegal) {
        this.representanteLegal = representanteLegal;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

}
