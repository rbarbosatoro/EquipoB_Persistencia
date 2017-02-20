package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import entidades.Candidato;

public interface RepositorioCandidato extends JpaRepository<Candidato, Long> {
}
