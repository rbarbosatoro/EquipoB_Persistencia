$(document).ready(function() {

	$("#edit-data-ofert").on('click', function() {

		var id = $(this).parents('tr').data('id');
	})
});
$(document).ready(function() {

	$("#edit-data-ofert").on('click', function() {

		var titofert = $('#d-oferttit').val();
		var tipofert = $('#d-oferttip').val();
		var descrofert = $('#d-ofertdescrip').val();
		var locofert = $('#d-ofertloc').val();
		var fechaofert = $('d-ofertdate').val();
		var reqcandofert = $('#d-ofertrequ').val();
		var sectlaboral = $('#d-sectlaboral')
		var catofert = $('#d-ofertcateg').val();
		var numvac = $('#d-ofertnumvac').val();
		var ofertsalmin = $('#d-ofertsalarmin').val();
		var ofertsalmax = $('#d-ofertsalarmax').val();

		$('#mtitulo-oferta').val(titofert);
		$('#mtipo-oferta').val(tipofert);
		$('#mdescripcion-oferta').val(descrofert);
		$('#mlocalidad').val(locofert);
		$('#mfecha-oferta').val(fechaofert);
		$('#mrequisitos-candidato').val(reqcandofert);
		$('#msector-laboral-oferta').val(sectlaboral);
		$('#mcategoria-oferta').val(catofert);
		$('#mnumero-vacantes').val(numvac);
		$('#msalario-minimo').val(ofertsalmin);
		$('#msalario-maximo').val(ofertsalmax);

	})

	$("#guardar-cambios-oferta").on('click', function() {

		var titofert = $('#d-oferttit').val();
		var tipofert = $('#d-oferttip').val();
		var descrofert = $('#d-ofertdescrip').val();
		var locofert = $('#d-ofertloc').val();
		var fechaofert = $('d-ofertdate').val();
		var reqcandofert = $('#d-ofertrequ').val();
		var sectlaboral = $('#d-sectlaboral')
		var catofert = $('#d-ofertcateg').val();
		var numvac = $('#d-ofertnumvac').val();
		var ofertsalmin = $('#d-ofertsalarmin').val();
		var ofertsalmax = $('#d-ofertsalarmax').val();

		var datos = {
			idBBDD : id,
			tituloofertaBBDD : titofert,
			tipoofertaBBDD : tipofert,
			descripcionofertaBBDD : descrofert,
			localidadofertaBBDD : locofert,
			fechaofertaBBDD : fechaofert,
			requisitoscandidatoofertaBBDD : reqcandofert,
			categoriaofertaBBDD : catofert,
			numerovacantesofertaBBDD : numvac,
			salariominimofertaBBDD : ofertsalmin,
			salariomaximoofertaBBDD : ofertsalmax
		};

		$.post("rutal del controlador", datos).done(function(data) {
			alert("Data Loaded: " + data);
		});

		$('#editar-oferta').on('hide.bs.modal', limpiarModal);

	})
});