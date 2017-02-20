package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Experiencia;

@Repository
public interface RepositorioExperiencia extends JpaRepository<Experiencia, Long> {

}
