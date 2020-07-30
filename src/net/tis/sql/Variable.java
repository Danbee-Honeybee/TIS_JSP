package net.tis.sql;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public class Variable { //전역변수 모아둔 문서
	Connection CN;
  Statement ST; 
  PreparedStatement PST;
  CallableStatement CST; 
  ResultSet RS; 
  java.util.Date Gwdate;
  
  int Gsabun;
  int Gpay;
  int Ghit;
  int Gtotal; 	//조회레코드갯수
  int GGtotal; 	//전체레코드갯수
  int GStotal;
  
  String Gname, Gtitle, Gemail, Grownum;
  String msg="쿼리문기술"; String submsg="";
  String Gdata;
  
  String ret;   //dbDelete()
  
  //댓글관련 전역변수
  String R_msg;
}
