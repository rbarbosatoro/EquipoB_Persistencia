package modelo.repositorio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import modelo.entidad.Formacion;



@Repository
public interface RepositorioFormacion extends JpaRepository<Formacion, Long>{

}