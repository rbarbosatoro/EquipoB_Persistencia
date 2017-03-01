$(document).ready(function() {

	$("#editarexperiencia").on('click', function() {

		var id = $(this).parents('tr').data('id');
		var empresa = $('#exempresa').text();
		var puesto = $('#expuesto').text();
		var fechainicio = $('#exinicio').text();
		var fechafinalizacion = $('#exfinalizacion').text();
		var descripcion = $('#exdescripcion').text();

		$('#idexperiencia').val(id);
		$('#nombreempresaexperiencia').val(empresa);
		$('#puestoexperiencia').val(puesto);
		$('#fechainicioexperiencia').val(fechainicio);
		$('#fechafinaexperiencia').val(fechafinalizacion);
		$('#descripcionexperiencia').val(descripcion);

	})

	$("#editarformacion").on('click', function() {

		var id = $(this).parents('tr').data('id');
		var titulo = $('#fortitulo').text();
		var especialidad = $('#forespecialidad').text();
		var fechainicio = $('#forinicio').text();
		var fechafinalizacion = $('#forfina').text();
		var centro = $('#forcentro').text();

		$('#idformacion').val(id);
		$('#tituloformacion').val(titulo);
		$('#especializacionformacion').val(especialidad);
		$('#fechainicioformacion').val(fechainicio);
		$('#fechafinaformacion').val(fechafinalizacion);
		$('#centroformacion').val(centro);

	})

	$("#editaridioma").on('click', function() {

		var id = $(this).parents('tr').data('id');
		var idioma = $('#ididioma').text();
		var nivel = $('#nivel').text();

		$('#ididiomas').val(id);
		$('#idinombre').val(idioma);
		$('#idinivel').val(nivel);

	})

	$(".borrar-experiencia").on("click", function() {
		var id = $(this).parents('tr').data('id');

		$.ajax({
			url : "/experiencia/" + id,

			type : 'DELETE',
			error : function(xhr, status, error) {
				alert(status);
				alert(this.url);
				alert(xhr.responseText);
			},
			success : function(result) {
				$('tr[data-id="' + id + '"]').remove();
			}

		});
	})

	$(".borrar-formacion").on("click", function() {
		var id = $(this).parents('tr').data('id');

		$.ajax({
			url : "/formacion/" + id,

			type : 'DELETE',
			error : function(xhr, status, error) {
				alert(status);
				alert(this.url);
				alert(xhr.responseText);
			},
			success : function(result) {
				$('tr[data-id="' + id + '"]').remove();
			}

		});
	});
	$(".borrar-idioma").on("click", function() {
		var id = $(this).parents('tr').data('id');

		$.ajax({
			url : "/idioma/" + id,

			type : 'DELETE',
			error : function(xhr, status, error) {
				alert(status);
				alert(this.url);
				alert(xhr.responseText);
			},
			success : function(result) {
				$('tr[data-id="' + id + '"]').remove();
			}

		});

	});
});
