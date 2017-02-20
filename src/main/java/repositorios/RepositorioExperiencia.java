package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import netflix.modelo.entidades.Experiencia;

public interface RepositorioExperiencia extends JpaRepository<Experiencia, Long> {

}
