<%@page import="logica.Servicio"%>
<%@page import="java.util.List"%>
<%@page import="logica.ControladoraLogica"%>
<%@page import="logica.Paquete"%>
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
<div class="body1">
  <div class="main">
      <header> 
          <div class="wrapper">
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
    <article class="left">
      <div class="css3">
        <h2 align="center">Modificar Paquete</h2>
      </div>
        <div>
        <form id="form_1" action="modificarPaquete" method="GET">
            <% HttpSession miSession = request.getSession();
                Paquete pack = (Paquete) miSession.getAttribute("paquete");
                %>
            <div class="bg">
                <label>Ingrese costo: $ </label> 
                <input type="number" class="input" name="costo" value="<%=pack.getCosto() %>"required>
            </div>
            <div class="bg">
                <label>Seleccione los Servicios que desee: </label>
                        <% ControladoraLogica control = new ControladoraLogica();
                        List<Servicio> listaServicios = control.listarServicios();
                        for(Servicio serv: listaServicios) {
                %>
                <tr>
                    <br>
                    <input type="checkbox" name="check" value="<%=serv.getCodigo_servicio() %>"> <%=serv.getCodigo_servicio() + " " +serv.getNombre() %> 
                </tr>
                    <% } %>
            </div>
            <button type="submit" id="btnGuardado" class="button2">  OK  </button> 
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
            <script src="multiple-select.js"></script>
            <script>
                $(function() {
                 $('#check').change(function() {
                      var valores = ($(this).val());
                    }).multipleSelect({
                        width: '100%'
                    });
                 });
            </script>
           </div>
        </form>
       </div>
    </article>
  </section>
</div>

<div class="body1"> 
    <div class="main">
        
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
<!-- END PAGE SOURCE -->
</body>
</html>