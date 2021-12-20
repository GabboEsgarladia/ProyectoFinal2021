
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

@WebServlet(name = "modificarCliente", urlPatterns = {"/modificarCliente"})
public class modificarCliente extends HttpServlet {
        
    ControladoraLogica control = new ControladoraLogica();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet modificarCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet modificarCliente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        Date fecha_nac = Date.valueOf(request.getParameter("fecNac"));
        String nacionalidad = request.getParameter("nacion");
        String celular = request.getParameter("numCelular");
        String email = request.getParameter("email");
        int id_cliente = Integer.parseInt(request.getParameter("id"));
        
        Cliente cliente = control.buscarCliente(id_cliente);
        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDireccion(direccion);
        cliente.setDni(dni);
        cliente.setFecha_nac(fecha_nac);
        cliente.setNacionalidad(nacionalidad);
        cliente.setCelular(celular);
        cliente.setEmail(email);
        
        control.modificarCliente(cliente);
        
        request.getSession().setAttribute("listaClientes", control.listarClientes());
        response.sendRedirect("verClientes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int id_cliente = Integer.parseInt(request.getParameter("id"));
        
        Cliente cliente = control.buscarCliente(id_cliente);
        
        HttpSession miSession = request.getSession();
        miSession.setAttribute("cliente", cliente);
        response.sendRedirect("modificarCliente.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
