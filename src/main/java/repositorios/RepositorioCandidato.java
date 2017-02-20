package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Candidato;

@Repository
public interface RepositorioCandidato extends JpaRepository<Candidato, Long> {

}
