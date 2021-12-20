<%@page import="logica.Paquete"%>
<%@page import="logica.Servicio"%>
<%@page import="logica.Cliente"%>
<%@page import="logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="logica.ControladoraLogica"%>
<%@page import="logica.Venta"%>
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
        <h2 align="center">Modificar Venta</h2>
      </div>
        <form id="form_1" action="modificarVenta" method="GET">
            <% HttpSession miSession = request.getSession();
                Venta venta = (Venta) miSession.getAttribute("venta");
                %>
            <div class="selectleft">
                <label>Seleccione Empleado: </label>
                <select name="selectEmpleado">
                    <% ControladoraLogica control = new ControladoraLogica();
                    List<Empleado> listaEmpleados = control.listarEmpleados();
                    for(Empleado emple: listaEmpleados) {
                        String nombreComp = emple.getNombre() + " " +emple.getApellido();
                     %>
                    <option name="empleado" value="<%=emple.getId_empleado()%>"> <%=nombreComp%> </option>
                    <% } %>
                </select>
            </div>
            <div class="selectright">
                <label>Seleccione Cliente </label>
                <select name="selectCliente">
                    <% List<Cliente> listaClientes = control.listarClientes();
                    for(Cliente cliente: listaClientes) {
                        String nombreComp = cliente.getNombre() + " " + cliente.getApellido();
                     %>
                    <option name="cliente" value="<%=cliente.getId_cliente()%>"> <%=nombreComp%> </option>
                    <% } %>
                </select>
            </div>
                <hr>
            <div class="input1"> 
                <label>Ingrese Fecha de venta: </label>
                <input type="date" class="input" name="fecVenta" <%=venta.getFecha_venta() %> required>
            </div>
                <hr>
            <div class="input1"> 
                <label>Ingrese Medio de pago: </label>
                <select name="selectPago">
                    <option value="1"> Efectivo </option>
                    <option value="2"> Transfrencia Bancaria </option>
                    <option value="3"> Tarjeta de Credito </option>
                    <option value="4"> Tarjeta de Debito </option>
                </select>
            </div>
                <hr>
            <div class="input1">
                <label>Seleccione Servicio: </label>
                <select name="selectServicio" id="sServicio">
                <% List<Servicio> listaServicios = control.listarServicios();
                for(Servicio serv: listaServicios) {
                %>
                <option  name="resServ" value="<%=serv.getCodigo_servicio() %>"> <%=serv.getNombre() %> </option>
                <% } %>
                </select>
                </div>
                <hr>
                <div  class="input1">
                    <label>Desea vender un Paquete?: </label> 
                    <div name="check">
                        <input type="checkbox" id="id_cb1" value="1"> Si
                    </div>
                </div>
                <div class="input1">
                    <label>Seleccione Paquete: </label>
                    <select name="selectPaquete" id="sPaquete">
                        <% List<Paquete> listaPaquetes = control.listarPaquetes();
                        for(Paquete pack: listaPaquetes) {
                        %>
                        <option name="resPaq" value="<%=pack.getCod_paquete() %>"> <%=pack.getCod_paquete() + " " + "Paquete" %> </option>
                            <% } %>
                    </select>
                </div>
                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
                        <script>
                            var update_select = function () {
                            if ($("#id_cb1").is(":checked")) {
                                $('#sServicio').prop('disabled', true);
                                $('#sPaquete').prop('disabled', false);
                             }
                            else {
                            $('#sServicio').prop('disabled', false);
                            $('#sPaquete').prop('disabled', true);
                            }
                        };
                        $(update_select);
                        $("#id_cb1").change(update_select);
                    </script>
                    <div>
                    <hr>
                    <button type="submit" id="btnGuardado" class="button2">  OK  </button> 
                    </div>
        </form>
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