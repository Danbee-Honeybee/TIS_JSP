package net.tis.sql;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public class Variable { //�������� ��Ƶ� ����
	Connection CN;
  Statement ST; 
  PreparedStatement PST;
  CallableStatement CST; 
  ResultSet RS; 
  java.util.Date Gwdate;
  
  int Gsabun;
  int Gpay;
  int Ghit;
  int Gtotal; 	//��ȸ���ڵ尹��
  int GGtotal; 	//��ü���ڵ尹��
  int GStotal;
  
  String Gname, Gtitle, Gemail, Grownum;
  String msg="���������"; String submsg="";
  String Gdata;
  
  String ret;   //dbDelete()
  
  //��۰��� ��������
  String R_msg;
}
