package proyecto.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.entidades.Oferta;

public interface RepositorioCurriculum extends JpaRepository<Oferta, Long>{

}