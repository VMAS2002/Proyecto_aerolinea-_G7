
import javax.swing.JOptionPane;

public class Puntos {
    
    public static void main(String[] args) {
        int po = Integer.parseInt(
                JOptionPane.showInputDialog("Ingrese el numero de puntos obtenidos: "));
        int pu = Integer.parseInt(
                JOptionPane.showInputDialog("Ingrese los puntos utlizados: "));
        int pt = Integer.parseInt(
                 JOptionPane.showInputDialog("Puntos totales: "));
        int Puntos = (po*5) - pu ;
        JOptionPane.showMessageDialog(null, "El cliente obtuvo" + Puntos + "Puntos\n"
                
                
                );
    
    }
    
}