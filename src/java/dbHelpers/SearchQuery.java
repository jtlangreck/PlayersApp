/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbHelpers;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Players;

/**
 *
 * @author Jake Langreck
 */
public class SearchQuery {
    
   private Connection conn;
   private ResultSet results;
   
   
    public SearchQuery(){
        
        Properties props = new Properties(); //MWC
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
        
        
   
    
    
    public void doSearch(String playerName){
        
       try {
           String query = "SELECT * FROM players WHERE UPPER(playerName) LIKE ? ORDER BY playerID ASC";
           
           PreparedStatement ps = conn.prepareStatement(query);
           ps.setString(1, "%" + playerName.toUpperCase() + "%");
           this.results = ps.executeQuery();
       } catch (SQLException ex) {
           Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
       }
        
        
        
    }
    
    
    public String getHTMLTable()
    {
       String table = "";
        table+="<table>";
        table+="<tr>";
        table+="<th> ID </th>";
        table+="<th> Name </th>";
        table+="<th> Position </th>";
        table+="<th> Age </th>";
        table+="<th> Height(Inches) </th>";
        table+="<th> </th>";
        table+="</tr>";
        
        try {
            while(this.results.next()) {
                Players player = new Players();
                player.setPlayerID(this.results.getInt("playerID"));
                player.setPlayerName(this.results.getString("playerName"));
                player.setPlayerPosition(this.results.getString("playerPosition"));
                player.setAge(this.results.getInt("Age"));
                player.setHeight(this.results.getInt("Height"));
                
                table += "<tr>";
                table += "<td>";
                table += player.getPlayerID();
                table += "</td>";
                
                table += "<td>";
                table += player.getPlayerName();
                table += "</td>";
                
                table += "<td>";
                table += player.getPlayerPosition();
                table += "</td>";
                
                table += "<td>";
                table += player.getAge();
                table += "</td>";
                
                table += "<td>";
                table += player.getHeight();
                table += "</td>";
                
                table+= "<td>";
                
                table+= "<a href=update?playerID=" +player.getPlayerID() + "> Update </a>" + "<a href=delete?playerID=" + player.getPlayerID() + "> Delete </a>";
                table+= "</td>";
                
                
                table += "</tr>";
                

            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        table+="</table>";
                
        return table;  
      
    }
    
    
}
    
    
    

