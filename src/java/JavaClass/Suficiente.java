/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaClass;
import Control.*;
import java.sql.SQLException;
/** 
 *    
 * @author Jos
 */  
public class Suficiente {
    String Nic;
    String id_re1;
    String id_re2;
    double pes_re1;
    double pes_re2;

    public Suficiente(String Nic, String id_re1, String id_re2, double pes_re1, double pes_re2) {
        this.Nic = Nic;
        this.id_re1 = id_re1;
        this.id_re2 = id_re2;
        this.pes_re1 = pes_re1;
        this.pes_re2 = pes_re2;
    }
    public boolean calcular() throws SQLException{
        System.out.print(Nic + id_re1 + pes_re1 + id_re2 + pes_re2);
        Conexion conexion = new Conexion();
        conexion.conectar();
        double can_re1 = conexion.consultarDouble("SELECT can_mol from dinventario natural join musuario natural join cmolecula where nic_usu = '"+ Nic + "' and nom_mol = '" + id_re1 +"';", "can_mol");
        if(can_re1>=pes_re1){
            double can_re2 = conexion.consultarDouble("SELECT can_mol from dinventario natural join musuario natural join cmolecula where nic_usu = '"+ Nic + "' and nom_mol = '" + id_re2 +"';", "can_mol");
            if(can_re2>=pes_re2){               
                return true;
            }
        }
        return false;
    }

    
}
