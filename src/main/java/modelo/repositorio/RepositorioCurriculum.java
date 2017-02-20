package modelo.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import modelo.entidad.Curriculum;
@Repository
public interface RepositorioCurriculum extends JpaRepository<Curriculum, Long>{

}
