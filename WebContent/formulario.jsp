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
<title>Formulario</title>
</head>
<body>
<div class="jumbotron text-center" style="background-color:#1894ed; color: white ">
  <h1>Hello world of Java: JSP</h1>
  <p>Using a form to send data</p> 
</div>
<ul class="breadcrumb">
  <li><a href="helloworld.jsp">Home</a></li>
  <li>formulario</li>
</ul>
<div class="container"></div>

<div class="col-lg-3"></div>
<div class="col-lg-6">
<h1 align="left">Formulario</h1>
<form class="form-horizontal" action="registro.jsp">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Nombre:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="pwd" placeholder="Enter name" name="nombre">
    </div>
    </div>
     <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Apellido:</label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" id="pwd" placeholder="Enter password" name="apellido">
    </div>
  </div>
    <div class="form-group">
  <div class="col-sm-10"> 
  <label class="checkbox-inline"><input type="checkbox" name="tecnologia" value="1">Java</label>
  <label class="checkbox-inline"><input type="checkbox" name="tecnologia" value="2">Javascript</label>
  <label class="checkbox-inline"><input type="checkbox" name="tecnologia" value="3">Python</label>
  <label class="checkbox-inline"><input type="checkbox" name="tecnologia" value="4">Php</label>
  </div>
 
  </div>

  
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox" name="recordar"> Remember me</label>
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Ingresar</button>
    </div>
  </div>
</form>
</div>

<div class="col-lg-3"></div>

</body>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div>
<jsp:include page="footer.html"></jsp:include>
</div>
</html>