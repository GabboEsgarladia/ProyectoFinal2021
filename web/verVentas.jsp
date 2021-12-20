
<%@page import="logica.Venta"%>
<%@page import="logica.Cliente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="logica.ControladoraLogica"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Proyecto Final</title>
<meta charset="utf-8">
<link rel="stylesheet" href="assets/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="assets/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="assets/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="assets/js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="assets/js/cufon-yui.js"></script>
<script type="text/javascript" src="assets/js/cufon-replace.js"></script>
<script type="text/javascript" src="assets/js/Myriad_Pro_italic_600.font.js"></script>
<script type="text/javascript" src="assets/js/Myriad_Pro_italic_400.font.js"></script>
<script type="text/javascript" src="assets/js/Myriad_Pro_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/ie6_script_other.js"></script>
<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="body1">
  <div class="main">
    <header>
      <div class="wrapper">
        <h1><span id="slogan">Lista de Ventas</span></h1>
        <div class="right">
          <nav>
            <ul id="menu">
              <li><a href="index.jsp">INICIO</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <article class="col2 pad_left1">
        <center>
        <table id="content">
            <thead>
                <th>ID Venta</th>
                <th>Fecha Venta</th>
                <th>Medio Pago</th>
                <th>Empleado</th>
                <th>Cliente</th>
                <th>Servicio</th>
                <th>Paquete</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
                <% ControladoraLogica control = new ControladoraLogica();
                List<Venta> listaVentas = control.listarVentas();
                for(Venta venta: listaVentas) {
                %>
                <tr>
                    <% int id_venta = venta.getNum_venta() ;%>
                    <td><%=id_venta %></td>
                    <% DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                        String fecVenta = dateFormat.format(venta.getFecha_venta()); %>
                    <td><%=fecVenta %> </td>
                    <% String medioPago = venta.getMedio_pago(); %>
                    <td><%=medioPago %> </td>
                    <% String nombreEmple = venta.getEmpleado().getNombre() + " " + venta.getEmpleado().getApellido() ;%>
                    <td><%=nombreEmple %> </td>
                   <% String nombreCli = venta.getCliente().getNombre() + " " + venta.getCliente().getApellido() ;%>
                    <td><%=nombreEmple %> </td>
                    <% if(venta.getServicio() != null) {
                            String nombreServ = venta.getServicio().getNombre() ;%>
                    <td><%=nombreServ %> </td>
                   <% } %>
                   <% if(venta.getPaquete() != null) {
                    int codPaquete = venta.getPaquete().getCod_paquete() ;%>
                    <td><%=codPaquete %> </td>
                    <% } %>
                    <td>
                        <form action="modificarVenta" method="POST">
                        <input type="hidden" name="id" value="<%=id_venta%>">
                        <button type="submit" class="button3">  Modificar  </button>
                        </form>
                    </td>
                    <td>
                        <form action="eliminarVenta" method="POST">
                        <input type="hidden" name="id" value="<%=id_venta%>">
                        <button type="submit" class="button4">  Eliminar  </button>
                        </form>
                    </td>
                </tr>
                <% } %>
             </tbody>
        </table>
        </center>
    </article>
  </section>
</div>
</div>

<div class="body2">
  <div class="main">
    <footer>
      <div class="footerlink">
          <p class="lf">Diseñado por: <a href="https://www.linkedin.com/in/gabriel-garcia-17974216b/">Garcia Gabriel</a></p>
        <p class="rf">Proyecto Final (Polo TIc 2021)</p>
        <div style="clear:both;"></div>
      </div>
    </footer>
  </div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>