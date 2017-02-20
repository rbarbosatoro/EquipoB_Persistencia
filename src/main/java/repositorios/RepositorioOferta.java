package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
<<<<<<< HEAD

import entidades.Oferta;

public interface RepositorioOferta extends JpaRepository<Oferta, Long>{

}
=======
import org.springframework.stereotype.Repository;

import entidades.Oferta;

@Repository
public interface RepositorioOferta extends JpaRepository<Oferta, Long> {

}
>>>>>>> 82fef025e9ea9d95f2ed2670a3f970650e0d3dd8
