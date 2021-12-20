
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Cliente;
import logica.Empleado;
import logica.Paquete;
import logica.Servicio;
import logica.Usuario;
import logica.Venta;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersis {
    
    ClienteJpaController clienteJpa = new ClienteJpaController();
    EmpleadoJpaController empleadoJpa = new EmpleadoJpaController();
    PaqueteJpaController paqueteJpa = new PaqueteJpaController();
    ServicioJpaController servicioJpa = new ServicioJpaController();
    VentaJpaController ventaJpa = new VentaJpaController();
    UsuarioJpaController usuarioJpa = new UsuarioJpaController();
    
    public void crearEmpleado(Empleado emple, Usuario usu) {
        try {
            empleadoJpa.create(emple);
            usuarioJpa.create(usu);
        }
        catch (Exception e) {
            System.out.println("No se pudo crear Empleado");
        }
    }
    
    public void crearCliente(Cliente cliente) {
        try {
            clienteJpa.create(cliente);
        }
        catch (Exception e) {
            System.out.println("No se pudo crear Cliente");
        }
    }
    
    public void crearServicio(Servicio serv) {
        try {
            servicioJpa.create(serv);
        }
        catch (Exception e) {
            System.out.println("No se pudo crear Servicio");
        }
    }
    
    public void crearPaquete(Paquete pack) {
        try {
            paqueteJpa.create(pack);
        }
        catch (Exception e) {
            System.out.println("No se pudo crear Paquete");
        }
    }
    
    public void crearVenta(Venta venta) {
        try {
            ventaJpa.create(venta);
        }
        catch (Exception e) {
            System.out.println("No se pudo crear Venta");
        }
    }
    
    public List<Empleado> listarEmpleados() {
        return empleadoJpa.findEmpleadoEntities();
    }
    
    public List<Cliente> listarClientes() {
        return clienteJpa.findClienteEntities();
    }
    
    public List<Servicio> listarServicios () {
        return servicioJpa.findServicioEntities();
    }
    
    public List<Paquete> listarPaquetes() {
        return paqueteJpa.findPaqueteEntities();
    }
    
    public List<Venta> listarVentas() {
        return ventaJpa.findVentaEntities();
    }
    
    
    public List<Usuario> listarUsuarios() {
        return usuarioJpa.findUsuarioEntities();
    }

    public void eliminarEmpleado(int id_empleado) {
        try {
            empleadoJpa.destroy(id_empleado);
        }
        catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarCliente(int id_cliente) {
        try {
            clienteJpa.destroy(id_cliente);
        }
        catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarServicio(int id_servicio) {
        try {
            servicioJpa.destroy(id_servicio);
        }
        catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void eliminarPaquete(int id_paquete) {
        try {
            paqueteJpa.destroy(id_paquete);
        }
        catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarVenta(int id_venta) {
        try {
            ventaJpa.destroy(id_venta);
        }
        catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Empleado buscarEmpleado(int id_empleado) {
        return empleadoJpa.findEmpleado(id_empleado);
    }

    public Cliente buscarCliente(int id_cliente) {
       return clienteJpa.findCliente(id_cliente);
    }
    
    public Servicio buscarServicio(int id_servicio) {
        return servicioJpa.findServicio(id_servicio);
    }
    
    public Paquete buscarPaquete(int id_paquete) {
        return paqueteJpa.findPaquete(id_paquete);
    }
    
    public Venta buscarVenta(int id_venta) {
        return ventaJpa.findVenta(id_venta);
    }

    public void modificarEmpleado(Empleado emple) {
        try {
           empleadoJpa.edit(emple);
        } 
        catch (Exception ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificarCliente(Cliente cliente) {
        try {
           clienteJpa.edit(cliente);
        } 
        catch (Exception ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificarServicio(Servicio serv) {
        try {
           servicioJpa.edit(serv);
        } 
        catch (Exception ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificarPaquete(Paquete pack) {
        try {
           paqueteJpa.edit(pack);
        } 
        catch (Exception ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void modificarVenta(Venta venta) {
        try {
           ventaJpa.edit(venta);
        } 
        catch (Exception ex) {
            Logger.getLogger(ControladoraPersis.class.getName()).log(Level.SEVERE, null, ex);
        }
    }



}
