<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

</head>
<body id="page1">
<div class="body1">
  <div class="main">
      <header> </header>
  </div>
</div>
<div class="main">
  <section id="content">
    <article class="left">
      <div class="pad_1">
        <h2>Iniciar Sesion</h2>
        <form id="form_1" action="SvUsuario" method="post">
          <div class="wrapper"> Ingrese su Usuario:
            <div class="bg">
                <input type="text" class="input" name="usuario" placeholder="Nombre de Usuario" size="80">
            </div>
          </div>
          <div class="wrapper"> Ingrese su Contraseña:
            <div class="bg">
              <input type="password" class="input" name="contrasenia" placeholder="Contraseña" size="80">
            </div>
          </div>
            <button type="submit" class="button2">  OK  </button> 
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
