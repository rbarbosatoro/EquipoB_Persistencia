package repositorios;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Formacion;



@Repository
public interface RepositorioFormacion extends JpaRepository<Formacion, Long>{

}