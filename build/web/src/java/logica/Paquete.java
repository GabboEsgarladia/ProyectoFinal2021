
package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Paquete implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)        
    int cod_paquete;
    @Basic
    double costo;
    @ManyToMany
    List<Servicio> listaServicios;

    public Paquete() {
    }

    public Paquete(int cod_paquete, double costo, List<Servicio> listaServicios) {
        this.cod_paquete = cod_paquete;
        this.costo = costo;
        this.listaServicios = listaServicios;
    }

    public int getCod_paquete() {
        return cod_paquete;
    }

    public void setCod_paquete(int cod_paquete) {
        this.cod_paquete = cod_paquete;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public List<Servicio> getListaServicios() {
        return listaServicios;
    }

    public void setListaServicios(List<Servicio> listaServicios) {
        this.listaServicios = listaServicios;
    }
}
