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
<title>Log in</title>
</head>
<body>
<jsp:include page="navigation.html"></jsp:include>
<jsp:include page="jumbotron.html"></jsp:include>
<center><h1>Iniciar Sesión</h1></center>
<div class="col-lg-2 col-md-2 col-sm-2"></div>
<div class="col-lg-8 col-md-8 col-sm-8">
<form class="form-horizontal" action="ingreso.jsp">
  <div class="form-group">
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
  </div>
  <div class="form-group">
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
  </div>
    <div class="form-group"> 
      <div class="checkbox">
        <label><input type="checkbox" name="recordar"> Remember me</label>
      </div>
  </div>
  <div class="form-group"> 
      <button type="submit" class="btn btn-default">Ingresar</button>
  </div>
</form>
</div>
<div class="col-lg-2 col-md-2 col-sm-2"></div>

</body>
</html>