package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Curriculum;
@Repository
public interface RepositorioCurriculum extends JpaRepository<Curriculum, Long>{

}
