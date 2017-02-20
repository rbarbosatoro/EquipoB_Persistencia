package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
<<<<<<< HEAD

import entidades.Curriculum;

public interface RepositorioCurriculum extends JpaRepository<Curriculum, Long>{

}
=======
import org.springframework.stereotype.Repository;

@Repository
public interface RepositorioCurriculum extends JpaRepository<RepositorioCurriculum, Long>{

}
>>>>>>> 82fef025e9ea9d95f2ed2670a3f970650e0d3dd8
