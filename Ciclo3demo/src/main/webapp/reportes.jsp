<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reportes</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<body>
<div class="topnav">
  <a href="Usuarios1.jsp">Usuarios</a>
  <a href="clientes.jsp">Clientes</a>
  <a href="proveedores.jsp">Proveedores</a>
  <a href="productos.jsp">Productos</a>
  <a href="ventas.jsp">Ventas</a>
  <a class="active" href="reportes.jsp">Reportes</a>
  <a href="login.jsp">Salir</a>
</div>
<div class="container">
  <form action="action_page.php">
  <div class="crud">
  		<hr>
		<p>generar listado de usuarios</p>
		<div class="col-derecha">
	      	<input type="submit" value="usuarios">
	    </div>
	    <hr>
	    <p>generar listado de clientes</p>
	    <div class="col-derecha">
	      	<input type="submit" value="clientes">
	    </div>
	    <hr>
	    <p>generar listado de ventas por clientes</p>
	    <div class="col-30">
	      	<input type="submit" value="Ventas">
	    </div>
</div>
  </form>
</div>
</body>
</html>