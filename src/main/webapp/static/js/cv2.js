








$(document).ready(function() {

		$("#editarexperiencia").on('click', function() {
			
			var id = $(this).parents('tr').data('id');
			var empresa = $('#exempresa').text();
			var puesto = $('#expuesto').text();
			var fechainicio = $('#exinicio').text();
			var fechafinalizacion = $('#exfinalizacion').text();
			var descripcion =	$('#exdescripcion').text();
			
			
			
			$('#idexperiencia').val(id);
			$('#nombreempresaexperiencia').val(empresa);
			$('#puestoexperiencia').val(puesto);
			$('#fechainicioexperiencia').val(fechainicio);
			$('#fechafinaexperiencia').val(fechafinalizacion);
			$('#descripcionexperiencia').val(descripcion);
			
			
			
			
			
			
		})
		
		$("#editarformacion").on('click', function() {
			
			var id = $(this).parents('tr').data('id');
			var empresa = $('#exempresa').text();
			var puesto = $('#expuesto').text();
			var fechainicio = $('#exinicio').text();
			var fechafinalizacion = $('#exfinalizacion').text();
			var descripcion =	$('#exdescripcion').text();
			
			
			
			$('#idexperiencia').val(id);
			$('#nombreempresaexperiencia').val(empresa);
			$('#puestoexperiencia').val(puesto);
			$('#fechainicioexperiencia').val(fechainicio);
			$('#fechafinaexperiencia').val(fechafinalizacion);
			$('#descripcionexperiencia').val(descripcion);
			
			
			
			
			
			
		})

		
		$("#guardar-cambios").on('click', function() {
			
			var id = $('#iddatosempresa').val(id);
			var nombre = $('#empnomb').text();
			var descripcion = $('#empdescrip').text();
			var sector = $('#empsect').text();
			var numempleados = $('#empmunempl').text();
			var email =	$('#empmail').text();
			var direccion = $('#empdirec').text();
			
			var datos = {idBBDD: id, nombreBBDD: nombre, descripcionBBDD: descripcion, sectorBBDD: sector, numempleadosBBDD: numempleados, emailBBDD: email, direccionBBDD: direccion };
			
			$.post( "rutal del controlador", datos)
			  .done(function( data ) {
			    alert( "Data Loaded: " + data );
			  });
			
			
			$('#editardatosempresa').on('hide.bs.modal', limpiarModal);

		})

		
		
		

			
		$(".borrar-oferta").on("click", function() {
			var id = $(this).parents('tr').data('id');

			$.ajax({
				url : "//" + id,
				
				type : 'DELETE',
				 error: function(xhr, status, error) {
			            alert(status);
			            alert(this.url);
			            alert(xhr.responseText);
			        },
				success : function(result) {
					$('tr[data-id="' + id + '"]').remove();
				}
			
			});
		})


});S