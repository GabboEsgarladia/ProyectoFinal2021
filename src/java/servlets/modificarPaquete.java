
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraLogica;
import logica.Paquete;
import logica.Servicio;

@WebServlet(name = "modificarPaquete", urlPatterns = {"/modificarPaquete"})
public class modificarPaquete extends HttpServlet {

    ControladoraLogica control = new ControladoraLogica();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet modificarPaquete</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet modificarPaquete at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        double costo = Double.parseDouble(request.getParameter("costo"));
        String[] valores = request.getParameterValues("check");
        int id_paquete = Integer.parseInt(request.getParameter("id"));
        
        
        List<Servicio> listaServicios =  new ArrayList();        
        for (String valore : valores) {
            int codigo = Integer.parseInt(valore);
            listaServicios.add(control.buscarServicio(codigo));
        }
        
        Paquete pack = control.buscarPaquete(id_paquete);
        
        pack.setCosto(costo);
        pack.setListaServicios(listaServicios);
        
        control.modificarPaquete(pack);
        
        request.getSession().setAttribute("listaPaquetes", control.listarPaquetes());
        response.sendRedirect("verPaquetes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_paquete = Integer.parseInt(request.getParameter("id"));
        
        Paquete pack = control.buscarPaquete(id_paquete);
        
        
        HttpSession miSession = request.getSession();
        miSession.setAttribute("paquete", pack);
        response.sendRedirect("modificarPaquete.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
