package net.tis.common;
import java.sql.*;
import java.util.Date;

import net.tis.sql.GuestDTO;
import net.tis.sql.GuestSQL;

public class DB {
  public static Connection getConnection() {
  Connection CN = null;
  try{
  	Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이브로드
      String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
      CN=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","1234");
      Date now = new Date();
      System.out.println("[ssi.jsp] Oracle Connected at " + now);
  	}catch(Exception ex){System.out.println("Error name :" + ex);}
  return CN; //반드시 있어야함
    //GuestSQL sql = new GuestSQL();
  	//GuestDTO dao = new GuestDTO();
  
  }
}// Global class end