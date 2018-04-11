<%@page import="java.util.AbstractCollection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="css/bootstrap.min.css">  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="js/bootstrap.min.js"></script> 
 <script type="text/javascript" src="js/action.js"></script> 		

<title>Hello World</title>
</head>
<body>
<jsp:include page="navigation.html"></jsp:include>
<jsp:include page="jumbotron.html"></jsp:include>
<div class="container">

<div class="col-lg-1"></div>
<div class="col-lg-10">
	<p>The time on the server is <%= new java.util.Date() %></p>
	
	
</div>
<div class="col-lg-1"></div>

</div>

<div class="container">
<center><h1>Qué tipo de scripts usar</h1></center>
<br/>
 <div class="row">
  <div class="col-lg-4">
    <div class="thumbnail">
    	<center><button class="btn btn-primary btn-lg" id="btn-3">Expresiones</button></center>
		<center><code>&lt;%=expresión Java %&gt;</code></center>

    </div>
  </div>
  <div class="col-lg-4">
    <div class="thumbnail">
    <center><button class="btn btn-primary btn-lg" id="btn-1">Scriptlets</button></center>
	<center><code>&lt;%  Varias lineas de codigo %&gt;</code></center>

    </div>
  </div>
  <div class="col-lg-4">
    <div class="thumbnail">
	<center><button class="btn btn-primary btn-lg" id="btn-2">Declaraciones</button></center>
	<center><code>&lt;%!Declaración de variables o métodos %&gt;</code></center>
    </div>
  </div>
</div>	
<hr></hr>
<div class="container" width=1276px heigth=700px id="expresiones">
  <div class="jumbotron">
  <%! String exp= "Expresión con JSP"; %>
    <h1><%= exp %></h1> 
  </div>

</div>	
</div>

<div class="container">
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
       
        <th>Objeto</th>
        <th>Descripción</th>
        <th>Interfaz</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Request</td>
        <td>Este objeto representa la petición del cliente. Proporciona los datos recibidos vía formulario</td>
        <td><a href="https://docs.oracle.com/javaee/7/api/javax/servlet/ServletRequest.html">javax.servlet.ServletRequest</a></td>
      </tr>
      <tr>
        <td>Response</td>
        <td>Este objeto encapsula la respuesta por parte del servidor</td>
        <td><a href="https://docs.oracle.com/javaee/7/api/javax/servlet/ServletResponse.html">javax.servlet.ServletResponse</a></td>
      </tr>
      <tr>
        <td>Session</td>
        <td>Este objeto proporciona una sesión única para cada usuario.</td>
        <td><a href="https://docs.oracle.com/javaee/7/api/javax/servlet/http/HttpSession.html">javax.servlet.http.HttpSession</a></td>
      </tr>
      <tr>
        <td>Out</td>
        <td>Este objeto proporciona recursos para escribir contenido en página web.</td>
        <td><a href="https://docs.oracle.com/javaee/7/api/javax/servlet/jsp/JspWriter.html">javax.servlet.jsp.JspWriter</a></td>
      </tr>
    </tbody>
  </table>
  </div>


</div>
<hr></hr>
<div class="container">
	<div class="col-lg-3">
	</div>
	<div class="col-lg-9">
	</div>
	<div id="form"class="col-lg-3 pull-right" align="right">
		<img id="img-form" alt="formulario" width="150px" height="150px" class="img-circle" src="img/fill_form.png">
	</div>

</div>



	




</body>
<jsp:include page="footer.html"></jsp:include>
</html>