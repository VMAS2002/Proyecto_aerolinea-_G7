
package Aerolinea.ClienteService;

import java.util.List;


public interface BoletosService {
     public List<Boletos> getBoletoss(boolean activos);

    public Boletos getBoletos(Boletos boletos);

    public void save(Boletos boletos);

    public void delete(Boletos boletos);
    
    public List<Boletos> getPorExistencias(int boletos);
    
}
    

