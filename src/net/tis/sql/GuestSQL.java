package net.tis.sql;

import java.sql.*;
import java.util.Date;

import net.tis.common.*;
import net.tis.sql.*;
import java.text.SimpleDateFormat;

public class GuestSQL extends Variable {
	
	public GuestSQL() {
		try {
				CN = DB.getConnection();
				ST = CN.createStatement();
				System.out.println("[GuestSQL] constructor method accessed");
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
	}
	
	
	public void test() {
		try {
			
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
	}//test end
	
	
	public void dbInsert(int Gsabun, String Gname, String Gtitle, int Gpay, String Gemail) {
		try {
			//call from guestWriteSave.jsp
			//Saving data in java file
			msg="insert into guest values(?, ?, ?, sysdate, ?, 0, ?)"; // 물음표 갯수가 순서임
	    PST=CN.prepareStatement(msg);
				    PST.setInt(1, Gsabun);
				    PST.setString(2, Gname);
				    PST.setString(3, Gtitle);
				    PST.setInt(4, Gpay);
				    PST.setString(5, Gemail);
	       PST.executeUpdate();
	    System.out.println("[GuestSQL] Data saved \n[msg] " + msg);
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
		
	}//test end
	
	public void dbDelete(String ret) {
		try {
	      msg="delete from guest where sabun =" + ret;
	      ST=CN.createStatement();
	      ST.executeUpdate(msg);
	      System.out.println("[GuestSQL] dbDelete Data deleted ");
	  	//response.sendRedirect("guestList.jsp");
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
	}//dbDelete end
	
}

