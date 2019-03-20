/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaClass;
    
/**
 *
 * @author Jos
 */  
public class Reaccion {
    String nom_ven = "";
    int id_ven = 0;
    int coe_rea = 0;
    int id_pom = 0;
    String nom_mol = "";

    public String getNom_ven() {
        return nom_ven;
    }

    public void setNom_ven(String nom_ven) {
        this.nom_ven = nom_ven;
    }

    public String getFor_mol() {
        return for_mol;
    }

    public void setFor_mol(String for_mol) {
        this.for_mol = for_mol;
    }
    double pes_mol = 0;
    String for_mol = "";
    public double getPes_mol() {
        return pes_mol;
    }

    public void setPes_mol(double pes_mol) {
        this.pes_mol = pes_mol;
    }


    public Reaccion(){}

    public int getId_ven() {
        return id_ven;
    }

    public void setId_ven(int id_ven) {
        this.id_ven = id_ven;
    }

    public int getCoe_rea() {
        return coe_rea;
    }

    public void setCoe_rea(int coe_rea) {
        this.coe_rea = coe_rea;
    }

    public int getId_pom() {
        return id_pom;
    }

    public void setId_pom(int pos_mol) {
        this.id_pom = pos_mol;
    }

    public String getNom_mol() {
        return nom_mol;
    }

    public void setNom_mol(String nom_mol) {
        this.nom_mol = nom_mol;
    }
    
}
