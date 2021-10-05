<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>proveedores</title>
<link rel="stylesheet"type="text/css"href="style.css">
</head>
<body>
<div class="topnav">
  <a href="Usuarios1.jsp">Usuarios</a>
  <a href="clientes.jsp">Clientes</a>
  <a class="active" href="proveedores.jsp">Proveedores</a>
  <a href="productos.jsp">Productos</a>
  <a href="ventas.jsp">Ventas</a>
  <a href="reportes.jsp">Reportes</a>
  <a href="login.jsp">Salir</a>
</div>
<div class="container">
  <form action="action_page.php">
    <div class="row">
      <div class="col-25">
        <label for="fname">NIT</label>
      </div>
      <div class="col-75">
        <input type="text" id="nit" name="nit" placeholder="ingrese NIT del proveedor">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">nombre del proveedor</label>
      </div>
      <div class="col-75">
        <input type="text" id="nproveedor" name="nproveedor" placeholder="ingrese cedula">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Dirección</label>
      </div>
      <div class="col-75">
        <input type="text" id="direccionp" name="direccionp" placeholder="ingrese dirección">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Teléfono</label>
      </div>
      <div class="col-75">
        <input type="text" id="telproveedor" name="telproveedor" placeholder="ingrese telefono">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Ciudad</label>
      </div>
      <div class="col-75">
        <input type="password" id="ciudadp" name="ciudadp" placeholder="Ingrese ciudad">
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