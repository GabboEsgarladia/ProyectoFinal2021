
<%@page import="logica.Servicio"%>
<%@page import="logica.Paquete"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
        <h1><span id="slogan">Lista de Paquetes</span></h1>
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
                <th>ID Paquete</th>
                <th>Costo</th>
                <th>Servicios</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
                <% ControladoraLogica control = new ControladoraLogica();
                List<Paquete> listaPaquetes = control.listarPaquetes();
                for(Paquete packs: listaPaquetes) {
                %>
                <tr>
                    <% int id_paquete = packs.getCod_paquete() ;%>
                    <td><%=id_paquete %></td>
                    <% double costo = packs.getCosto(); %>
                    <td><%=costo %> </td>
                    <td> <% List<Servicio> listaServicios = packs.getListaServicios(); 
                    for(Servicio serv: listaServicios) {
                        String servicios = serv.getNombre() + " ";
                        %>
                        <%=servicios %> <br>
                        <% } %>
                        </td>
                    <td>
                        <form action="modificarPaquete" method="POST">
                        <input type="hidden" name="id" value="<%=id_paquete%>">
                        <button type="submit" class="button3">  Modificar  </button>
                        </form>
                    </td>
                    <td>
                        <form action="eliminarPaquete" method="POST">
                        <input type="hidden" name="id" value="<%=id_paquete%>">
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