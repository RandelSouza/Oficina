/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package campeonato;
// Campeonato
import java.util.ArrayList;
import java.util.Scanner;
/**
 *
 * @author rande
 */
public class Campeonato {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner entrada = new Scanner(System.in);
        String[] valores = new String[6];       
        valores = entrada.nextLine().split(" ");
       
        int Pc, Pf, Cv , Ce, Cs, Fv, Fe, Fs;
        
        Cv = Integer.parseInt(valores[0]);
        Ce = Integer.parseInt(valores[1]);
        Cs = Integer.parseInt(valores[2]);
        Fv = Integer.parseInt(valores[3]);       
        Fe = Integer.parseInt(valores[4]);
        Fs = Integer.parseInt(valores[5]);                               
                
        
        Pc = (Cv * 3) + Ce;
        Pf = (Fv * 3) + Fe;
        
        if(Pc > Pf){
            System.out.println("C");
        }
        else if(Pc < Pf){
            System.out.println("F");        
        }else if(Pc == Pf){
            if(Cs > Fs){
                System.out.println("C");
            }else if (Cs < Fs){
                System.out.println("F");
            }
            else{
                System.out.println("=");
            }
        }                
    }    
}
