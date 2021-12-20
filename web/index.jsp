<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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

</head>
<body id="page1">
    <% 
           HttpSession miSession = request.getSession();
            String usuario = (String) miSession.getAttribute("usu");
              if(usuario == null) {
                response.sendRedirect("login.jsp");
              }
             else {
         %>
<div class="body1">
  <div class="main">
    <header>
      <div class="wrapper">
        <h1><span id="slogan">Pagina Principal</span></h1>
        <div class="right">
          <nav>
            <ul id="menu">
                <li><a href="index.jsp">INICIO</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </header>
  </div>
</div>
    
    <div class="main">
       <section id="content">
        <article class="col1">
        <div class="pad_1">
            <h3 class="box1">Gestion Empleados</h3>
            <a class="button1" href="verEmpleados.jsp">Ver Empleados</a>
            <a class="button1" href="altaEmpleado.jsp">Nuevo Empleado</a>
            <h3 class="box1">Gestion clientes</h3>
            <a class="button1" href="verClientes.jsp">Ver Clientes</a>
            <a class="button1" href="altaCliente.jsp">Nuevo Cliente</a>
            <h3 class="box1">Gestion Ventas</h3>
            <a class="button1" href="verVentas.jsp">Ver Ventas</a>
            <a class="button1" href="altaVenta.jsp">Nueva Venta</a>
            <h3 class="box1">Gestion Servicios Turisticos</h3>
            <a class="button1" href="verServicios.jsp">Ver Servicios</a>
            <a class="button1" href="altaServicio.jsp">Nuevo Servicio</a>
            <h3 class="box1">Gestion Paquetes Turisticos</h3>
            <a class="button1" href="verPaquetes.jsp">Ver Paquetes</a>
            <a class="button1" href="altaPaquete.jsp">Nuevo Paquete</a>
        </div>
        </article>
       </section>
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
<!-- END PAGE SOURCE -->
<% } %>
</body>
</html>
