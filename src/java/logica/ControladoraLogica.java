
package logica;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersis;

public class ControladoraLogica {

    ControladoraPersis controlPers = new ControladoraPersis();
    
    
    public boolean verificarUsuario(String usu, String contra) {
        List<Usuario> listaUsuarios = controlPers.listarUsuarios();
        
        if (listaUsuarios != null) {
            for(Usuario usuario: listaUsuarios) {
                if ((usuario.getUsuario().equals(usu)) && (usuario.getContrasenia().equals(contra))) {
                    return true;
                }
            }
        }
        return false;
    } 
        
    public void crearEmpleado(String nombre, String apellido, String usuario, String contrasenia, String cargo, double sueldo, String direccion, String dni, Date fecha_nac, String nacionalidad, String celular, String email) {
        Empleado emple = new Empleado();
        Usuario usu = new Usuario();
        
        emple.setNombre(nombre);
        emple.setApellido(apellido);
        emple.setCargo(cargo);
        emple.setSueldo(sueldo);
        emple.setDireccion(direccion);
        emple.setDni(dni);
        emple.setFecha_nac(fecha_nac);
        emple.setNacionalidad(nacionalidad);
        emple.setCelular(celular);
        emple.setEmail(email);
        
        usu.setUsuario(usuario);
        usu.setContrasenia(contrasenia);
        
        controlPers.crearEmpleado(emple, usu);
    }
    
    public void crearCliente(String nombre, String apellido, String direccion, String dni, Date fecha_nac, String nacionalidad, String celular, String email) {
        Cliente cliente = new Cliente();
        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDireccion(direccion);
        cliente.setDni(dni);
        cliente.setFecha_nac(fecha_nac);
        cliente.setNacionalidad(nacionalidad);
        cliente.setCelular(celular);
        cliente.setEmail(email);
        
        controlPers.crearCliente(cliente);
    }
    
    public void crearServicio(String nombre, String descripcion, String destino, Date fecha_servicio, double costo) {
        Servicio serv = new Servicio();
        serv.setNombre(nombre);
        serv.setDescripcion(descripcion);
        serv.setDestino(destino);
        serv.setFecha_servicio(fecha_servicio);
        serv.setCosto(costo);
        
        controlPers.crearServicio(serv);
    }    

    public void crearPaquete(double costo, String[] valores) {
        Paquete pack = new Paquete();
        List<Servicio> listaServicios =  new ArrayList();
        
        for (String valore : valores) {
            int codigo = Integer.parseInt(valore);
            listaServicios.add(controlPers.buscarServicio(codigo));
        }
        pack.setCosto(costo);
        pack.setListaServicios(listaServicios);
        
        controlPers.crearPaquete(pack);
    }
    
    public void crearVenta(Date fecha_Venta, String medioPago, String empleado, String serv, String pack, String cliente) {
        Venta venta = new Venta();
        int opcionMedio = Integer.parseInt(medioPago);
        int valorCliente = Integer.parseInt(cliente);
        int valorEmple = Integer.parseInt(empleado);
        Cliente cli = controlPers.buscarCliente(valorCliente);
        Empleado emple = controlPers.buscarEmpleado(valorEmple);
        switch (opcionMedio) {
            case 1:
                medioPago = "Efectivo";
                break;
            case 2:
               medioPago = "Transfrencia Bancaria";
               break;
            case 3:
               medioPago = "Tarjeta de Credito";
               break;
            case 4:
               medioPago = "Tarjeta de Debito";
        }
            
        if (pack != null) {
            int valorPack = Integer.parseInt(pack);
            Paquete paque = controlPers.buscarPaquete(valorPack);
            venta.setPaquete(paque);
        }
        else {
            int valorServ = Integer.parseInt(serv);
            Servicio servic = controlPers.buscarServicio(valorServ);
            venta.setServicio(servic);
        }
        
        venta.setFecha_venta(fecha_Venta);
        venta.setMedio_pago(medioPago);
        venta.setCliente(cli);
        venta.setEmpleado(emple);
        
        controlPers.crearVenta(venta);
    }
    
    public List<Empleado> listarEmpleados () {
        return controlPers.listarEmpleados();
    }
    
    public List<Cliente> listarClientes () {
        return controlPers.listarClientes();
    }
    
    public List<Servicio> listarServicios () {
        return controlPers.listarServicios();
    }
    
    public List<Paquete> listarPaquetes () {
        return controlPers.listarPaquetes();
    }
    
    public List<Venta> listarVentas () {
        return controlPers.listarVentas();
    }

    public void eliminarEmpleado(int id_empleado) {
        controlPers.eliminarEmpleado(id_empleado);
    }
    
    public void eliminarCliente(int id_cliente) {
        controlPers.eliminarCliente(id_cliente);
    }
    
    public void eliminarServicio(int id_servicio) {
        controlPers.eliminarServicio(id_servicio);
    }
    
    public void eliminarPaquete(int id_paquete) {
        controlPers.eliminarPaquete(id_paquete);
    }
    
    public void eliminarVenta(int id_venta) {
        controlPers.eliminarVenta(id_venta);
    }

    public Empleado buscarEmpleado(int id_empleado) {
        return controlPers.buscarEmpleado(id_empleado);
    }

    public Cliente buscarCliente(int id_cliente) {
        return controlPers.buscarCliente(id_cliente);
    }
    
    public Servicio buscarServicio(int id_servicio) {
        return controlPers.buscarServicio(id_servicio);
    }
    
    public Paquete buscarPaquete(int id_paquete) {
        return controlPers.buscarPaquete(id_paquete);
    }
    
    public Venta buscarVenta(int id_venta) {
        return controlPers.buscarVenta(id_venta);
    }
    
    public void modificarEmpleado(Empleado emple) {
        controlPers.modificarEmpleado(emple);
    }    

    public void modificarCliente(Cliente cliente) {
        controlPers.modificarCliente(cliente);
    }

    public void modificarServicio(Servicio serv) {
        controlPers.modificarServicio(serv);
    }

    public void modificarPaquete(Paquete pack) {
        controlPers.modificarPaquete(pack);
    }

    public void modificarVenta(Venta venta) {
        controlPers.modificarVenta(venta);
    }

}
