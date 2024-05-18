package Modelo;

public class TipoEntidad {

    int IdTipoEntidad;
    String TipoEntidad;

    public TipoEntidad() {
    }

    public TipoEntidad(int IdTipoEntidad, String TipoEntidad) {
        this.IdTipoEntidad = IdTipoEntidad;
        this.TipoEntidad = TipoEntidad;
    }

    public int getIdTipoEntidad() {
        return IdTipoEntidad;
    }

    public void setIdTipoEntidad(int IdTipoEntidad) {
        this.IdTipoEntidad = IdTipoEntidad;
    }

    public String getTipoEntidad() {
        return TipoEntidad;
    }

    public void setTipoEntidad(String TipoEntidad) {
        this.TipoEntidad = TipoEntidad;
    }

}
