package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Rol;



@Repository
public interface RepositorioRol extends JpaRepository<Rol, Long> {

}
