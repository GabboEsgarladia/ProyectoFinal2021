
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.ControladoraLogica;

@WebServlet(name = "altaVenta", urlPatterns = {"/altaVenta"})
public class altaVenta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet altaVenta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet altaVenta at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ControladoraLogica control = new ControladoraLogica();
        
        Date fecha_Venta = Date.valueOf(request.getParameter("fecVenta"));
        String medioPago = request.getParameter("selectPago");
        String empleado = request.getParameter("selectEmpleado");
        String pack = request.getParameter("selectPaquete");   
        String serv = request.getParameter("selectServicio");
        String cliente = request.getParameter("selectCliente");
        control.crearVenta(fecha_Venta, medioPago, empleado, serv, pack, cliente);
        
        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
