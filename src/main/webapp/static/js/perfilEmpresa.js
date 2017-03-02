$(document).ready(function() {

		$("#editar-datos-empresa").on('click', function() {
			
			var id = $(this).parents('tr').data('id');
			var nombre = $('#empnomb').text();
			var descripcion = $('#empdescrip').text();
			var sector = $('#empsect').text();
			var numempleados = $('#empmunempl').text();
			var email =	$('#empmail').text();
			var direccion = $('#empdirec').text();
			
			
			$('#inputId').val(id);
			$('#nombre-empresa').val(nombre);
			$('#descripcion-empresa').val(descripcion);
			$('#sector-empresa').val(sector);
			$('#numero-empleados').val(numempleados);
			$('#email-empresa').val(email);
			$('#direccion-empresa').val(direccion);
			
			
		})

		
		$("#guardar-cambios").on('click', function() {
			
			var id = $('#iddatosempresa').val(id);
			var nombre = $('#empnomb').val();
			var descripcion = $('#empdescrip').val();
			var sector = $('#empsect').val();
			var numempleados = $('#empmunempl').val();
			var email =	$('#empmail').val();
			var direccion = $('#empdirec').val();
			
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


});