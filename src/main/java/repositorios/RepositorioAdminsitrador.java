package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Administrador;

@Repository
public interface RepositorioAdminsitrador extends JpaRepository<Administrador, Long>{

}
