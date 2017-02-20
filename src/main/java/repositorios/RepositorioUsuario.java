package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;

import entidades.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario, Long>{
	
	UserDetails findByUsername(String username);


}
