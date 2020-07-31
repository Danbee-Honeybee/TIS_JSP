package net.tis.sql;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;

import net.tis.common.*;
import net.tis.sql.*;
import java.text.SimpleDateFormat;

public class GuestSQL extends GuestDTO{
	//전역변수
	Connection CN;
  Statement ST; 
  PreparedStatement PST;
  CallableStatement CST; 
  ResultSet RS; 
  java.util.Date Gwdate;
  
  //리스트 출력 전역변수
  int Grn;
  int Gsabun;
  int Gpay, Ghit;
  private int Gtotal;
	private int GGtotal;
  int GStotal;
  
  
  String Gname, Gtitle, Gemail, Grownum;
  String msg=""; String submsg="";
  String Gdata;
  String ret;   //dbDelete()
  
  //댓글관련 전역변수
  String R_msg;
  String Rwriter, Rcontent;
  String Rdata;
  int Rcnt;
  int Rrn, Rnum, Rsabun;
  
  //제목옆에 댓글갯수 전역변수
  String msg3; 
  Statement ST3; 
  ResultSet RS3; 
  int RGtotal;
  
  //페이징 전역변수
  String pnum;
  String returnpage;
  int pageNUM, pagecount;
	int start, end;
	int startpage, endpage;
	int tmp;
	
	//검색 전역변수
	String sqry=""; 
	String skey=""; 
	String sval="";
	public GuestSQL() {
		try {
				CN = DB.getConnection();
				ST = CN.createStatement();
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
	}
	
	
  public Vector<Guesttest> dbTest() {//07-31-금요일 4:41분 생성
  	Vector <Guesttest> VT = new Vector<Guesttest>();
  	 try {
  		 Guesttest test = new Guesttest();
  		 int code=2400;
  		 String name="스프링";
  		 double point = 3.14;
  		 boolean gender = true;
  		 char grade='F' ;
  		 
  		 int code2=3500;
  		 String name2="java";
  		 double point2 = 7.8;
  		 boolean gender2 = false;
  		 char grade2='A' ;
  		 
  		 test.setCode(code);
  		 test.setName(name);
  		 test.setPoint(point);
  		 test.setGender(gender);
  		 test.setGrade(grade);
  		 test.setCode(code2);
  		 test.setName(name2);
  		 test.setPoint(point2);
  		 test.setGender(gender2);
  		 test.setGrade(grade2);
  		 VT.add(new Guesttest());
  		 
  	 }catch(Exception ex) { System.out.println("에러:" + ex);}
  	 return VT;
   }//end--------------------------------------------------------------------
	
  
  public void dbDetail() { //guestDetail.jsp 문서랑 연결
  	try {
  		msg="select * from guest where sabun="+"";
  		
		} catch (Exception e) {
		}
  }
  
  
	public void dbInsert() {
		//여기에는 코드 기술 안함 자바 기초에서 사용하는 기술
	}//dbInsert end
	public void dbInsert(GuestDTO dto) {
		//여기에는 코드 기술 안함 자바 기초에서 사용하는 기술
	}//dbInsert end
	
	public Vector<GuestDTO> dbSelect() { //얘는 쿼리만 던져
		  Vector<GuestDTO> list = new Vector<GuestDTO>();
		try {
			msg="select rownum rn, g.* from guest g";
			ST=CN.createStatement();
			RS=ST.executeQuery(msg);	
			while(RS.next()==true) {
				GuestDTO dto = new GuestDTO();
			   dto.setRn(RS.getInt("rn"));
			   dto.setSabun(RS.getInt("sabun"));
			   dto.setName(RS.getString("name"));
			   dto.setTitle(RS.getString("title"));
			   dto.setEmail(RS.getString("email"));
			   dto.setWdate(RS.getDate("wdate"));
			   dto.setHit(RS.getInt("hit"));
			   list.add(new GuestDTO());
			}
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
		return list;
	}//dbInsert end
	
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
	       PST.executeUpdate(); // --> 여기서저장 실행
	    System.out.println("[GuestSQL] Data saved");
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
		
	}//dbInsert end

	
	public void dbDelete(String ret) {
		try {
	      msg="delete from guest where sabun =" + ret;
	      ST=CN.createStatement();
	      ST.executeUpdate(msg);
	      System.out.println("[GuestSQL] dbDelete Data deleted ");
	  	//response.sendRedirect("guestList.jsp");
		} catch (Exception ex) {System.out.println("에러 : " + ex);}
	}//dbDelete end
	
	public int dbGtotal() {
	 	 try {
	 		 msg="select count(*) as cnt from guest ";
	 		 ST = CN.createStatement();
	 		 RS = ST.executeQuery(msg);
	 		 if(RS.next()==true) { Gtotal= RS.getInt("cnt"); }
	 		 System.out.println("총갯수=" + Gtotal);
	 	 }catch(Exception ex) { System.out.println("에러:" + ex);}
	 	 return Gtotal;
	  }//end--------------------------------------------------------------------
	
}

