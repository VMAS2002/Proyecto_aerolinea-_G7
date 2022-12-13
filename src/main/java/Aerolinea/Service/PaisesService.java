package Aerolinea.Service;

import Aerolinea.Domain.Paises;
import java.util.List;

public interface PaisesService {

    public List<Paises> getPaisess(boolean activos);

    public Paises getPaises(Paises paises);

    public void save(Paises paises);

    public void delete(Paises paises);

}
