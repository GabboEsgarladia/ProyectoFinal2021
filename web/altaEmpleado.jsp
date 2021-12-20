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
    <article class="left">
      <div class="css3">
        <h2 align="center">Alta de Empleado</h2>
        <form id="form_1" action="altaEmpleado" method="POST">
            <div class="bg">
                <label align="left">Ingrese su Nombre: </label> 
                <input type=text" class="input" name="nombre" placeholder="Nombre" size="30" required>
            </div>
            <div class="bg">
                <label>Ingrese su Apellido: </label>
                <input type="text" class="input" name="apellido" placeholder="Apellido" size="30" required>
            </div>
            <div class="bg"> 
                <label>Ingrese su Usuario: </label> 
                <input type="text" class="input" name="usuario" placeholder="Usuario" size="30" required>
            </div>
            <div class="bg">
                <label>Ingrese su contraseña: </label> 
                <input type="password" class="input" name="contrasenia" placeholder="Contraseña" size="20" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su Cargo: </label> 
                <input type="text" class="input" name="cargo" placeholder="cargo" size="30" required>
            </div>
            <div class="bg">
                <label>Ingrese su sueldo: $ </label> 
                <input type="number" class="input" name="sueldo" placeholder="sueldo" size="20" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su Direccion: </label> 
                <input type="text" class="input" name="direccion" placeholder="Direccion" size="50" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su DNI: </label>
                <input type="text" class="input" name="dni" placeholder="00.000.000" size="20" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su Fecha de Nacimiento: </label>
                <input type="date" class="input" name="fecNac" placeholder="dd/mm/yyyy" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su Nacionalidad: </label> 
                <input type="text" class="input" name="nacion" placeholder="Argentina" size="20" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su Celular: </label>
                <input type="number" class="input" name="numCelular" placeholder="00000000" size="20" required>
          </div>
            <div class="bg"> 
                <label>Ingrese su E-Mail: </label>
                <input type="text" class="input" name="email" placeholder="fulanito@gmail.com" size="50" required>
          </div>
            <button type="submit" class="button2">  OK  </button> </div>
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