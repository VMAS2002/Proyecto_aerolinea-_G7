package Aerolinea.Dao;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

public interface BoletosDao extends CrudRepository<Boletos, Long> {

    List<Boletos> findByExistencias(int boletos);


    }
ada