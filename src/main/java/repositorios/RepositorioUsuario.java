package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Usuario;

@Repository
public interface RepositorioUsuario extends JpaRepository<Usuario, Long>{

}
