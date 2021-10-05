package co.edu.unbosque.ciclo3demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
String menu = request.getParameter("menu");
String accion = request.getParameter("accion");
        
 switch (menu) {
     case "Principal":
	  request.getRequestDispatcher("/Principal.jsp").forward(request, response);
	  break;
     case "Usuarios":
	  if (accion.equals("Listar")) {
	     try {
	        ArrayList<Usuarios> lista = TestJSON.getJSON();
		 request.setAttribute("lista", lista);
	     } catch (Exception e) {
		 e.printStackTrace();
	     }
	  }else if(accion.equals("Agregar")) {
	     Usuarios usuario = new Usuarios();
	     usuario.setCedula_usuario(Long.parseLong(request.getParameter("txtcedula")));
	     usuario.setNombre_usuario(request.getParameter("txtnombre"));
	     usuario.setEmail_usuario(request.getParameter("txtemail"));
	     usuario.setUsuario(request.getParameter("txtusuario"));
	     usuario.setPassword(request.getParameter("txtpassword"));
					
            int respuesta=0;
	      try {
		   respuesta = TestJSON.postJSON(usuario);
		   if (respuesta==200) {
	request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request,
                                                                               response);
		   } else {
			   write.println("Error: " +  respuesta);
			}
			   write.close();
			} catch (Exception e) {
			   e.printStackTrace();
			}
		}else if(accion.equals("Actualizar")) {
		     Usuarios usuario = new Usuarios();
	            usuario.setCedula_usuario(Long.parseLong(request.getParameter("txtcedula")));
		      usuario.setNombre_usuario(request.getParameter("txtnombre"));
		      usuario.setEmail_usuario(request.getParameter("txtemail"));
			usuario.setUsuario(request.getParameter("txtusuario"));
			usuario.setPassword(request.getParameter("txtpassword"));
			
	             int respuesta=0;
			try {
			   respuesta = TestJSON.putJSON(usuario,usuario.getCedula_usuario());
			   PrintWriter write = response.getWriter();
							
			   if (respuesta==200) {
		request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
	        	   } else {
				write.println("Error: " +  respuesta);
			   }
				write.close();
			   } catch (Exception e) {
				e.printStackTrace();
			   }
		}else if(accion.equals("Cargar")) {
			Long id= Long.parseLong(request.getParameter("id"));
			try {
	                ArrayList<Usuarios> lista1 = TestJSON.getJSON();
			   System.out.println("Parametro: " + id);						
			   for (Usuarios usuarios:lista1){
				if (usuarios.getCedula_usuario()==id) {
				   request.setAttribute("usuarioSeleccionado", usuarios);
		request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);	
				}
			   }
			 } catch (Exception e) {
		       	e.printStackTrace();
			 }
		}else if(accion.equals("Eliminar")) {
	        	Long id= Long.parseLong(request.getParameter("id"));			
			int respuesta=0;
			try {
			   respuesta = TestJSON.deleteJSON(id);
			   PrintWriter write = response.getWriter();
			   if (respuesta==200) {
		request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
			   } else {
				write.println("Error: " +  respuesta);
			   }
			      write.close();
			   } catch (Exception e) {
				e.printStackTrace();
			   }	
		}
	  request.getRequestDispatcher("/Usuarios.jsp").forward(request, response);
      break;
case "Clientes":
  request.getRequestDispatcher("/Clientes.jsp").forward(request, response);
break;
case "Proveedores":	
 request.getRequestDispatcher("/Proveedores.jsp").forward(request, response);
 break;
case "Productos":
	request.getRequestDispatcher("/Productos.jsp").forward(request, response);
	break;
case "Ventas":	
	request.getRequestDispatcher("/Ventas.jsp").forward(request, response);
	break;
	}
    }
}

