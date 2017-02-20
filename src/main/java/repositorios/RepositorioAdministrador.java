package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import entidades.Administrador;

public interface RepositorioAdministrador extends JpaRepository<Administrador, Long> {

}
