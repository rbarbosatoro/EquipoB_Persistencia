package ejemplo.controlador;

import java.util.ArrayList;
import java.util.List;

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
			

			
			String[][] creador = {
		            
		            { "dani1.jpg", "dani2.jpg", "Daniel Sánchez Martín ", "Base de datos"},
		            { "david1.jpg", "david2.jpg", "David Jurado Ortega ", "Controladores"},
		            { "jose1.jpg", "jose2.jpg", "José Manuel Cantero Cantero ", "Vistas"},
		            { "angel1.jpg", "angel2.jpg", "Ángel Jesús Expósito Caro ", "Controladores"},
		            
		            { "1.jpg", "2.jpg", "David Roman Carabantes ", "Vistas"},
		            { "maca1.jpg", "maca2.jpg", "Macarena Casañas Suárez ", "Controladores"},
		            { "daniel1.jpg", "daniel2.jpg", "Daniel Sáez Montes ", "Controladores"},
		            { "alfredo1.jpg", "alfredo2.jpg", "Alfredo Fernández García ", "Base de datos"},
		            
		            { "juanka1.jpg", "juanka2.jpg", "Juan Carlos Medina Martínez ", "Vistas"},
		            { "pablo1.jpg", "pablo2.jpg", "Pablo Fariña ", "Vistas"},
		            { "alvaro1.jpg", "alvaro2.jpg", "Alvaro Jesús Zapata Jaraíz ", "Base de datos"},
		            { "maria1.jpg", "maria2.jpg", "María Isabel Fernández Felipe", "Base de datos"},
		            
		            { "juancarlos1.jpg", "juancarlos2.jpg", "Juan Carlos Lumbreras Díaz", "Base de datos"},
		            { "ruben1.jpg", "ruben2.jpg", "Rubén Barbosa Toro ", "Base de datos"},
		            { "joel1.jpg", "joel2.jpg", "Joel Jackson Castaño ", "Controladores"},
		            { "vero1.jpg", "vero2.jpg", "Verónica Galván Esperilla", "Vistas"},
		            
		            { "mana1.jpg", "mana2.jpg", "Manasés Sánchez González ", "Controladores"},
		            { "sergio1.jpg", "sergio2.jpg", "Sergio Jesús Caro Arroyo ", "Vistas"},
		            { "jesus1.jpg", "jesus2.jpg", "Jesús  ", "Scrum Master"},
		            
		            
		        };
			model.addAttribute(creador);
			
			return "index";
	    }
}

