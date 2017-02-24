package ejemplo.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ejemplo.modelo.entidad.Administrador;
import ejemplo.modelo.entidad.Candidato;
import ejemplo.modelo.entidad.Empresa;
import ejemplo.modelo.entidad.Rol;
import ejemplo.modelo.repositorio.RepositorioAdministrador;
import ejemplo.modelo.repositorio.RepositorioCandidato;
import ejemplo.modelo.repositorio.RepositorioEmpresa;
import ejemplo.modelo.repositorio.RepositorioRol;

@Controller
public class InicioControlador {

		
		@Autowired
		private RepositorioRol reposiRol;
		@Autowired
		private RepositorioAdministrador repoAdmin;
		@Autowired
		private RepositorioCandidato repoCandi;
		@Autowired
		private RepositorioEmpresa repoEmpre;
		
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
	    public String index(Model model){
		
			reposiRol.save(new Rol((long) 1, "ADMIN"));
			reposiRol.save(new Rol((long) 2, "CANDIDATO"));
			reposiRol.save(new Rol((long) 3, "EMPRESA"));
			Administrador admin = new Administrador("nombre", "apellidos");
			repoAdmin.save(admin);
			Candidato candi = new Candidato((long) 3, "email", "password", null, "nombre", "apellidos", null, false, "imagen", "nif", 0, 0, 0, "direccion", "provincia",null);
			repoCandi.save(candi);
			Empresa empre= new Empresa((long) 4, "email", "password", null, "nombre", "direccion", "numeroEmpleado", "logotipo", "sector", "descripcion", null);
			repoEmpre.save(empre);
			
			return "index";
	    }
}

