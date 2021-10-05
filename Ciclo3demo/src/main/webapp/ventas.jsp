<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ventas</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<body>
<div class="topnav">
  <a href="Usuarios1.jsp">Usuarios</a>
  <a href="clientes.jsp">Clientes</a>
  <a href="proveedores.jsp">Proveedores</a>
  <a href="productos.jsp">Productos</a>
  <a class="active" href="ventas.jsp">Ventas</a>
  <a href="reportes.jsp">Reportes</a>
  <a href="login.jsp">Salir</a>
</div>
<div class="container">
  <form action="action_page.php" method="post">
  		<div class="row">
	      <div class="col-derecha">
	        <label for="fname">cédula</label>
	      </div>
	      <div class="col-30">
	        <input type="text" id="cedula" name="cedula" placeholder="">
	      </div>
	      <div class="col-derecha">
		    <input type="submit" value="Consultar">
		  </div>
		  <div class="col-derecha">
	        <label for="fname">cliente</label>
	      </div>
	      <div class="col-75">
	        <input type="text" id="cliente" name="cliente" placeholder="">
	      </div>
	      <div class="col-30">
	        <label for="fname">consecutivo</label>
	      </div>
	      <div class="col-30">
	        <input type="text" id="consecutivo" name="consecutivo" placeholder="">
	      </div>
	      </div>
	      <hr>
	      <div class="row">
		      <div class="col-derecha">
		        <label for="fname">código producto</label>
		      </div>
		      <div class="col-30">
		        <input type="text" id="codigo" name="codigo" placeholder="">
		      </div>
		      <div class="col-derecha">
			    <input type="submit" value="Consultar">
			  </div>
			  <div class="col-30">
		        <label for="fname">nombre del producto</label>
		      </div>
		      <div class="col-75">
		        <input type="text" id="nombre" name="nombre" placeholder="">
		      </div>
		      <div class="col-30">
		        <label for="fname">cantidad</label>
		      </div>
		      <div class="col-30">
		        <input type="text" id="cantidad" name="cantidad" placeholder="">
		      </div>
		      <div class="col-30">
		        <label for="fname">valor total</label>
		      </div>
		      <div class="col-30">
		        <input type="text" id="valortotal" name="valortotal" placeholder="">
		    </div>
		     </div>
		     <hr>
		      <div class="col-25">
		        <label for="fname">total venta</label>
		      </div>
		      <div class="col-75">
		        <input type="text" id="totalventa" name="totalventa" placeholder="">
		      </div>
		      <div class="col-25">
		        <label for="fname">total IVA</label>
		      </div>
		      <div class="col-75">
		        <input type="text" id="totaliva" name="totaliva" placeholder="">
		      </div>
		     <div class="col-25">
		        <label for="fname">total con IVA</label>
		      </div>
		      <div class="col-75">
		        <input type="text" id="totalconiva" name="totalconiva" placeholder="">
		      </div>
	</form>
</div>
</body>
</html>