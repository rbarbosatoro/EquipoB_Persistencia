$(document).ready(function() {

	$('.contenedorimagen.imagen.alternativa').hide();
	
	$('.contenedorimagen.imagen.main').on("mouseover", function(){
		
		$(this).next().show();
	});
	
	
});