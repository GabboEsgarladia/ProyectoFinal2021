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
        <h1><span id="slogan">Lista de Clientes</span></h1>
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
                <th>ID Cliente</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Direccion</th>
                <th>DNI</th>
                <th>Fecha Nacimiento</th>
                <th>Nacionalidad</th>
                <th>Celular</th>
                <th>E-mail</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
                <% ControladoraLogica control = new ControladoraLogica();
                List<Cliente> listaClientes = control.listarClientes();
                for(Cliente cliente: listaClientes) {
                %>
                <tr>
                    <% int id_cliente = cliente.getId_cliente();%>
                    <td><%=id_cliente %></td>
                    <% String nombre = cliente.getNombre(); %>
                    <td><%=nombre %> </td>
                    <% String apellido = cliente.getApellido();%>
                    <td><%=apellido %> </td>
                    <% String direccion = cliente.getDireccion(); %>
                    <td><%=direccion %> </td>
                    <% String dni = cliente.getDni(); %>
                    <td><%=dni %> </td>
                    <% DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                        String fecNac = dateFormat.format(cliente.getFecha_nac()); %>
                    <td><%=fecNac %> </td>
                    <% String nacionalidad = cliente.getNacionalidad(); %>
                    <td><%=nacionalidad %> </td>
                    <% String celular = cliente.getCelular(); %>
                    <td><%=celular %> </td>
                    <% String email = cliente.getEmail(); %>
                    <td><%=email %> </td>
                    <td>
                        <form action="modificarCliente" method="POST">
                        <input type="hidden" name="id" value="<%=id_cliente%>">
                        <button type="submit" class="button3">  Modificar  </button>
                        </form>
                    </td>
                    <td>
                        <form action="eliminarCliente" method="POST">
                        <input type="hidden" name="id" value="<%=id_cliente%>">
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