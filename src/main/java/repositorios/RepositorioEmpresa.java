package repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import entidades.Empresa;


@Repository
public interface RepositorioEmpresa extends JpaRepository<Empresa, Long>{

}
