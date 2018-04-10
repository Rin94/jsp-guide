<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%
Random rand = new Random();
int n = rand.nextInt(1000000);
String name = "Jared";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="css/bootstrap.min.css">  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="js/bootstrap.min.js"></script> 
 <script type="text/javascript" src="js/action.js"></script> 	
<title>Servicios de Scriptlets</title>
</head>
<body>
<div class="jumbotron text-center" style="background-color:#1894ed; color: white ">
  <h1>Hello world of Java: JSP</h1>
  <p>Scriptlets example</p> 
</div>
<ul class="breadcrumb">
  <li><a href="helloworld.jsp">Home</a></li>
  <li>Scriptlets</li>
</ul>

<div class="container">
	<h1>Eres el visitante número: 
		<div style="color: red">
			<%= n  %> <%= name.toUpperCase() %>
		</div> 
	</h1>
	
	<p>La suma de 5 y 7 es: <%= 5+7 %></p>
	<p><%= n %> es mayor que 100000: <%= n>100000 %></p>
	
	<%
		for(int i=1;i<=10;i++){
			out.println("<br>El mensaje: "+i);
		}
	%>
	
</div>

</body>
<jsp:include page="footer.html"></jsp:include>
</html>