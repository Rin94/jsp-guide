/**
 * 
 */
$(document).ready(function(){
	$("#expresiones").hide();
	$("#btn-1").click(function(){
		window.open('scriptlets.jsp','_self');
	});
	$("#btn-2").click(function(){
		window.open('declaracion.jsp','_self');
	});
	$("#btn-3").click(function(){
		alert("Hola Perro");
		$("#expresiones").show();
	});
	$("#img-form").click(function(){
		window.open('formulario.jsp','_self');		
	});
	$("#img-form").mouseenter(function(){
		  $( "#img-form" ).animate({
			    width: "70%",
			    opacity: 0.8,
			    marginLeft: "0.6in",
			    fontSize: "3em",
			    borderWidth: "10px"
			  }, 1500 );
		
	});
});
