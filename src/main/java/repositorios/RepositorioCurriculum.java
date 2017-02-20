package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepositorioCurriculum extends JpaRepository<RepositorioCurriculum, Long>{

}
