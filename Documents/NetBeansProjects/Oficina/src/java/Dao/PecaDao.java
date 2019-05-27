package Dao;

import Connection.ConnectionFactory;
import Pojo.PecaPojo;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class PecaDao {
    ConnectionFactory connect = new ConnectionFactory();  
    PecaPojo pecaPojo = new PecaPojo();
    String sql = "";
    
     // Método que insere uma aposta no banco de dados.
    public void salvar(PecaPojo pecaPojo){
        sql = "INSERT INTO peca(nome, preco, unidade) VALUES(?, ?, ?);";                
        try {
            connect.connection();
            PreparedStatement pst = connect.connect.prepareStatement(sql);
            pst.setString(1, pecaPojo.getNome());
            pst.setDouble(2, pecaPojo.getPreco());
            pst.setInt(3, pecaPojo.getUnidade());            
            pst.execute();
            connect.disconect();
            //JOptionPane.showMessageDialog(null, "Aposta salva com êxito!");
        } catch (SQLException ex) {            
            JOptionPane.showMessageDialog(null, "Não foi possivel salvar a aposta: " + ex.getMessage());
        }                        
    }
}
