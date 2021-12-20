
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
import logica.ControladoraLogica;
import logica.Servicio;

@WebServlet(name = "modificarServicio", urlPatterns = {"/modificarServicio"})
public class modificarServicio extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet modificarServicio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet modificarServicio at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String destino = request.getParameter("destino");
        Date fecha_servicio = Date.valueOf(request.getParameter("fecServicio"));
        double costo = Double.parseDouble(request.getParameter("costo"));
        int id_servicio = Integer.parseInt(request.getParameter("id"));
        
        Servicio serv = control.buscarServicio(id_servicio);
        
        serv.setNombre(nombre);
        serv.setDescripcion(descripcion);
        serv.setDestino(destino);
        serv.setFecha_servicio(fecha_servicio);
        serv.setCosto(costo);
        
        control.modificarServicio(serv);
        
        request.getSession().setAttribute("listaServicios", control.listarServicios());
        response.sendRedirect("verServicios.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_servicio = Integer.parseInt(request.getParameter("id"));
        
        Servicio serv = control.buscarServicio(id_servicio);
        
        HttpSession miSession = request.getSession();
        miSession.setAttribute("servicio", serv);
        response.sendRedirect("modificarServicio.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
