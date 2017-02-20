package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Oferta;

@Repository
public interface RepositorioOferta extends JpaRepository<Oferta, Long> {

}
