
<%@page import="helloworld.com.Calculos.Calculos"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="css/bootstrap.min.css">  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="js/bootstrap.min.js"></script> 
 <script type="text/javascript" src="js/action.js"></script> 	
<title>Declaración de Variables</title>
</head>
<body>
<div class="jumbotron text-center" style="background-color:#1894ed; color: white ">
  <h1>Hello world of Java: JSP</h1>
  <p>Example of Expresions</p> 
</div>
<ul class="breadcrumb">
  <li><a href="helloworld.jsp">Home</a></li>
  <li>declaracion</li>
</ul>

<div class="container">
<h1>Ejemplo de un método y declaración de variables</h1>



<h4 style="color:blue">El resultado de la suma es <%= Calculos.metodoSuma(7,5) %></h4>
<h4 style="color:blue">El resultado de la resta es <%= Calculos.metodoResta(7,5) %></h4>
<h4 style="color:blue">El resultado de la multiplicación es <%= Calculos.metodoMultiplica(7,5) %></h4>
<h4 style="color:blue">El resultado de la división es <%= Calculos.metodoDivision(7,5) %></h4>


</div>
<br/>
<hr></hr>
<br/>
<div class="container">
<h1>Ejemplo sencillo usando Request con JSP</h1>

<h4 style="color:blue">Petición de datos del navegador: </h4>
<code><%= request.getHeader("User-Agent") %></code>

<br/><br/>
<h4 style="color:blue">Petición idioma usado: <code><%= request.getLocale() %></code> </h4>

</div>
<jsp:include page="footer.html"></jsp:include>
</body>
</html>