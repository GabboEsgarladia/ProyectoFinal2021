
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Cliente;
import logica.ControladoraLogica;
import logica.Empleado;
import logica.Paquete;
import logica.Servicio;
import logica.Venta;

@WebServlet(name = "modificarVenta", urlPatterns = {"/modificarVenta"})
public class modificarVenta extends HttpServlet {
    
    ControladoraLogica control = new ControladoraLogica();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet modificarVenta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet modificarVenta at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Date fecha_Venta = Date.valueOf(request.getParameter("fecVenta"));
        String medioPago = request.getParameter("selectPago");
        int empleado = Integer.parseInt(request.getParameter("selectEmpleado"));
        String pack = request.getParameter("selectPaquete");   
        String serv = request.getParameter("selectServicio");
        int cliente = Integer.parseInt(request.getParameter("selectCliente"));
        int id_venta = Integer.parseInt(request.getParameter("id"));
        
        Venta venta = control.buscarVenta(id_venta);
        Empleado emple = control.buscarEmpleado(empleado);
        Cliente cli = control.buscarCliente(cliente);
        
        venta.setFecha_venta(fecha_Venta);
        venta.setMedio_pago(medioPago);
        venta.setEmpleado(emple);
        venta.setCliente(cli);
        if (pack != null) {
            int valorPack = Integer.parseInt(pack);
            Paquete paque = control.buscarPaquete(valorPack);
            venta.setPaquete(paque);
        }
        else {
            int valorServ = Integer.parseInt(serv);
            Servicio servic = control.buscarServicio(valorServ);
            venta.setServicio(servic);
        }
        
        control.modificarVenta(venta);
        
        request.getSession().setAttribute("listaVentas", control.listarVentas());
        response.sendRedirect("verVentas.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_venta = Integer.parseInt(request.getParameter("id"));
        
        Venta venta = control.buscarVenta(id_venta);
        
        HttpSession miSession = request.getSession();
        miSession.setAttribute("venta", venta);
        response.sendRedirect("modificarVenta.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
