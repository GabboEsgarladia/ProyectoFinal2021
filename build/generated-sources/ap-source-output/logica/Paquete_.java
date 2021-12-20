package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Servicio;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-19T21:05:04")
@StaticMetamodel(Paquete.class)
public class Paquete_ { 

    public static volatile SingularAttribute<Paquete, Double> costo;
    public static volatile SingularAttribute<Paquete, Integer> cod_paquete;
    public static volatile ListAttribute<Paquete, Servicio> listaServicios;

}