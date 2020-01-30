/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Global;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Dell
 */
public class DB { 
    Statement stmt;
    Connection con;
    ResultSet rs;
    public DB(){
        try{
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/dbsocial";
    con=DriverManager.getConnection(url,"root","root");
    stmt=con.createStatement();
        }
        catch(Exception e){System.out.println(e);}
    }
    public void update(String str) throws Exception{
    stmt.executeUpdate(str);
    
    }
    public ResultSet execute(String str) throws Exception{
    ResultSet rs=stmt.executeQuery(str);
    return rs;
    }
    public int generateID(){
        int id=0;
        try{
            ResultSet rs=new DB().execute("select ifnull(max(sno),0)sno from tbfriend");
            if (rs.next()){
               id= rs.getInt("sno");
               id++;
               
               
           
            } 
            
        }
        catch(Exception e){}
         return id;
    }
    public int newID(String colName,String tableName){
        int id=0;
        try{
            String qry="select ifnull(max("+colName+"),0)"+colName+" from "+tableName;
            ResultSet rs=new DB().execute(qry);
            if (rs.next()){
               id= rs.getInt(colName);
               id++;
               System.out.println(qry);
               
           
            } 
            
        }
        catch(Exception e){}
         return id;
    }
 
    }
    


    
