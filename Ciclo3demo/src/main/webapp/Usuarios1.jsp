<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<body>
<div class="topnav">
  <a class="active" href="#home">Usuarios1</a>
  <a href="clientes.jsp">Clientes</a>
  <a href="proveedores.jsp">Proveedores</a>
  <a href="productos.jsp">Productos</a>
  <a href="ventas.jsp">Ventas</a>
  <a href="reportes.jsp">Reportes</a>
  <a href="login.jsp">Salir</a>
</div>
<div class="container">
  <form action="action_page.php">
    <div class="row">
      <div class="col-25">
        <label for="fname">Nombres completos</label>
      </div>
      <div class="col-75">
        <input type="text" id="nombre" name="nombre" placeholder="ingrese nombres y apellidos completos">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">C�dula</label>
      </div>
      <div class="col-75">
        <input type="text" id="cedula" name="cedula" placeholder="ingrese cedula">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Correo electr�nico</label>
      </div>
      <div class="col-75">
        <input type="text" id="correo" name="correo" placeholder="ingrese direcci�n de correo v�lida">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Usuario</label>
      </div>
      <div class="col-75">
        <input type="text" id="usuario" name="usuario" placeholder="ingrese su usuario">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Contrase�a</label>
      </div>
      <div class="col-75">
        <input type="password" id="contrase�a" name="contrase�a" placeholder="contrase�a de 8 d�gitos">
      </div>
    </div>
    <div class="crud">
		<div class="col-30">
	      	<input type="submit" value="Consultar">
	    </div>
	    <div class="col-30">
	      	<input type="submit" value="Crear">
	    </div>
	    <div class="col-30">
	      	<input type="submit" value="Actualizar">
	    </div>
	    <div class="col-30">
	      	<input type="submit" value="Borrar">
	    </div>
    </div>
  </form>
</div>
</body>
</html>