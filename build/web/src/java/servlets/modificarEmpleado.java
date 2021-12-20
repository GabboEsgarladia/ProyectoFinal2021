
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
import logica.Empleado;


@WebServlet(name = "modificarEmpleado", urlPatterns = {"/modificarEmpleado"})
public class modificarEmpleado extends HttpServlet {
    
        ControladoraLogica control = new ControladoraLogica();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet modificarEmpleado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet modificarEmpleado at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String cargo = request.getParameter("cargo");
        double sueldo = Double.parseDouble(request.getParameter("sueldo"));
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        Date fecha_nac = Date.valueOf(request.getParameter("fecNac"));
        String nacionalidad = request.getParameter("nacion");
        String celular = request.getParameter("numCelular");
        String email = request.getParameter("email");
        int id_empleado = Integer.parseInt(request.getParameter("id"));
        
        Empleado emple = control.buscarEmpleado(id_empleado);
        
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
        
        control.modificarEmpleado(emple);
        
        request.getSession().setAttribute("listaEmpleados", control.listarEmpleados());
        response.sendRedirect("verEmpleados.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_empleado = Integer.parseInt(request.getParameter("id"));
        
        Empleado emple = control.buscarEmpleado(id_empleado);
        
        HttpSession miSession = request.getSession();
        miSession.setAttribute("empleado", emple);
        response.sendRedirect("modificarEmpleado.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
