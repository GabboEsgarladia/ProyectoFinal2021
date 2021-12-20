package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Cliente;
import logica.Empleado;
import logica.Paquete;
import logica.Servicio;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-19T21:05:04")
@StaticMetamodel(Venta.class)
public class Venta_ { 

    public static volatile SingularAttribute<Venta, Integer> num_venta;
    public static volatile SingularAttribute<Venta, Cliente> cliente;
    public static volatile SingularAttribute<Venta, Servicio> servicio;
    public static volatile SingularAttribute<Venta, Empleado> empleado;
    public static volatile SingularAttribute<Venta, String> medio_pago;
    public static volatile SingularAttribute<Venta, Date> fecha_venta;
    public static volatile SingularAttribute<Venta, Paquete> paquete;

}