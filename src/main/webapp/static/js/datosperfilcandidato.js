
$(document).ready(function() {

	

	$("#btn-dperfil").on('click',function() {
		var id = $(this).parents('tr').data('id');
		var url = '/ProyectoFinalJAVABadajoz/candidatos/' + id;

		var nombre = $('#datoscandidato tbody tr #cnombre').text();
		var apellidos = $('#datoscandidato tbody tr #capellidos').text();
		var dni = $('#datoscandidato tbody tr #cnif').text();
		var fechanac = $('#datoscandidato tbody tr #cfechanac').text();
		var direccion = $('#datoscandidato tbody tr #cdireccion').text();
		var fijo = $('#datoscandidato tbody tr #cfijo').text();
		var movil = $('#datoscandidato tbody tr #cmovil').text();
		var movil2 = $('#datoscandidato tbody tr #cmovil2').text();
		
		$('.modal-title').text("Editar Perfil");
		$('#nombre-candidato').val(nombre);
		$('#apellidos-candidato').val(apellidos);
		$('#nif-candidato').val(dni);
		$('#fechanac-candidato').val(fechanac);
		$('#direccion-candidato').val(direccion);
		$('#fijo-candidato').val(fijo);
		$('#movil-candidato').val(movil);
		$('#movil2-candidato').val(movil2);
		
		$('#inputId').val(candidato.id);
		$('#modal-candidato').modal('show');
	})
			

		$("#btn-dperfil").on('click',function() {
			var id = $(this).parents('tr').data('id');
			var url = '/ProyectoFinalJAVABadajoz/candidatos/' + id;

			var nombre = $('#nombre-candidato').val();
			var apellidos = $('#nombre-apellidos').val();
			var nif = $('#nif-candidato').val();
			var fechanac = $('#fechanac-candidato').val();
			var direccion = $('#direccion-candidato').val();
			var fijo = $('#fijo-candidato').val();
			var movil = $('#movil-candidato').val();
			var nmovil2 = $('#movil2-candidato').val();
			
			
			$.get(url)
				.done(function(candidato) {
					$('#datoscandidato tbody tr #cnombre').text(nombre);
					$('#datoscandidato tbody tr #capellidos').text(apellidos);
					$('#datoscandidato tbody tr #cdni').text(nif);
					$('#datoscandidato tbody tr #cfechanac').text(fechanac);
					$('#datoscandidato tbody tr #cdireccion').text(direccion);
					$('#datoscandidato tbody tr #cfijo').text(fijo);
					$('#datoscandidato tbody tr #cmovil').text(movil);
					$('#datoscandidato tbody tr #cmovil2').text(movil2);
					
					$('#modal-candidato').modal('hide');
				})
				.fail(function(jqXHR, textStatus, errorThrown) {
						console.log("The following error occured: "
								+ textStatus, errorThrown);
				})
				
				
		});
	
	//jQuery Carta:\\
	$(".btn-editar-carta").on('click',function() {
		var nombre = $.trim( $(this).prev().text() );
		var descripcion = $.trim( $(this).parent().parent().parent().find('div:last').text() );
		console.log(descripcion);
		
		$('#cartatitulo-candidato').val(nombre);
		$('#descripcioncarta-candidato').val(descripcion);
		
		$('#modal-carta').modal('show');
		
		
	});

	$('.boton-borrar-modal-carta').on('click', function(){
		var id = $(this).prev().prev().val();
		$('#idmodalcarta').val(id);
	});
	
	
	$('.btn-borrar-carta').on('click', function(){
		var id =$('#idmodalcarta').val(); 
		
		$.ajax({
			url : "carta/"+id,
			type: 'DELETE',
		    success: function(result) {
		    	$('idcarta'+id).remove();
		    }
		});		
	});
	
	
	
	
	
	
	//Borrar CV\\
	$('.boton-borrar-modal-cv').on('click', function(){
		var id = $(this).parent().parent().data('id');
		console.log(id);
		$('#idmodalcv').val(id);
		
	});
	
	
	$('.btn-borrar-cv').on('click', function(){
		var id =$('#idmodalcv').val(); 
		
		$.ajax({
			url : "cv/"+id,
			type: 'DELETE',
		    success: function(result) {
		    	$('idcv'+id).remove();
		    }
		});		
	});


})