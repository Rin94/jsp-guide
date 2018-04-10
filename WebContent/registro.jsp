<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="helloworld.com.modelo.ConnectionManager" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="css/bootstrap.min.css">  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="js/bootstrap.min.js"></script> 
 <script type="text/javascript" src="js/action.js"></script> 	
<title>Registro</title>
</head>
<body>
<div class="jumbotron text-center" style="background-color:#1894ed; color: white ">
  <h1>Hello world of Java: JSP</h1>
  <p>Scriptlets example</p> 
</div>
<ul class="breadcrumb">
  <li><a href="helloworld.jsp">Home</a></li>
  <li><a href="formulario.jsp">Formulario</a></li>
  <li>Info</li>
</ul>
<div class="container">
<h1>Información del Registro</h1>
<h3>Nombre: <%= request.getParameter("nombre") %></h3>
<h3>Apellido: <%= request.getParameter("apellido") %></h3>
<h3>Correo: <%= request.getParameter("email") %></h3>
<h3>Contraseña: <%= request.getParameter("password") %></h3>

<h3>Recordar: <%= request.getParameter("recordar") %></h3>



<%

	String nombre=request.getParameter("nombre");
	String apellido=request.getParameter("apellido");
	String correo=request.getParameter("email");
	String pass=request.getParameter("password");
	String select[] = request.getParameterValues("tecnologia"); 
	if (select != null && select.length != 0) {
		out.println("You have selected: ");
		for (int i = 0; i < select.length; i++) {
			out.println(select[i]); 
		}
	}
	Statement stmt = null;
	Connection con = ConnectionManager.getConnection();
	stmt = con.createStatement();
	
	String sql= "INSERT INTO USUARIOS (correo,contrasena,nombre, apellido) VALUES('"+correo+"','"+pass+"','"+nombre+"','"+apellido+"')";
	stmt.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
	ResultSet rs = stmt.getGeneratedKeys();
	int key=0;
	if ( rs.next() ) {
	    // Retrieve the auto generated key(s).
	     key= rs.getInt(1);
	}
	for (int i=0; i<select.length;i++){
		stmt = con.createStatement();
		sql="INSERT INTO USUARIOS_TECNOLOGIA(id_usuario, id_tecnologia) VALUES("+key+","+select[i]+")";
		stmt.executeUpdate(sql);
	}
//Class.forName("com.mysql.jdbc.Driver");
//java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:8889/proyecto_jsp","root","root");
//java.sql.Statement miStat=miConexion.createStatement();
%>



</div>
</body>
<jsp:include page="footer.html"></jsp:include>
</html>