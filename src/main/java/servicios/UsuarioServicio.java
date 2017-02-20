package servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


import repositorios.RepositorioUsuario;

public class UsuarioServicio implements UserDetailsService {

	@Autowired
	private RepositorioUsuario repous;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		return repous.findByUsername(username);
	}

}
