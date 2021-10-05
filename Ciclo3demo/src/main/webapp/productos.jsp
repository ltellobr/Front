<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>productos</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<body>
<div class="topnav">
  <a href="Usuarios1.jsp">Usuarios</a>
  <a href="clientes.jsp">Clientes</a>
  <a href="proveedores.jsp">Proveedores</a>
  <a class="active" href="productos.jsp">Productos</a>
  <a href="ventas.jsp">Ventas</a>
  <a href="reportes.jsp">Reportes</a>
  <a href="login.jsp">Salir</a>
</div>
<div class="container">
		 <form action="action_page.php">
		    <div class="row">
		      <div class="col-25">
		        <label for="fname">Nombre del archivo</label>
		      </div>
		      <div class="col-75">
		        <input type="text" id="nombre" name="nombre" placeholder="consultar lista productos de la tienda">
		      </div>
		      <div class="col-derecha">
			  	<input type="submit" value="Examinar">
			  </div>
		    </div>
		    <div class="crud">
				<div class="col-30">
			      	<input type="submit" value="Cargar">
			    </div>
		    </div>
		</form>
</div>
</body>
</html>