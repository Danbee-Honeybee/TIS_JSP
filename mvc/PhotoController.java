package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.tis.common.DB;
import net.tis.sql.GuestDTO;
import net.tis.sql.GuestSQL;

//직접매핑 
//@WebServlet("/PhotoController")
public class PhotoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PhotoController() {
        super();
    }//end

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("doGet(1,2)");
//    	request,response 사용가능
//    	out,application,session내장기능은 없어서 우리가 직접 객체화 작업
//		  response.getWriter().append("Served at: ").append(request.getContextPath());
//      <%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>    	  
    	  response.setContentType("text/html; charset=UTF-8"); //응답하는곳의 캐릭터 셋을 UTF-8로 할거야.
    	  PrintWriter out = response.getWriter();
    	  out.println("<h1>PhotoController.java문서 11:45</h1>");
    	  out.println("<img src='images/aaa.gif'>");
    	  out.println("<img src='images/bar.gif'>");
    	  
    	  //request 방식
    	  GuestSQL GS = new GuestSQL();
    	  ArrayList<GuestDTO> LG = GS.dbSelect(); 
    	  int Gtotal = GS.dbGtotal();
    	  request.setAttribute("LG", LG);
    	  request.setAttribute("Gtotal", Gtotal);
    	  
    	  //session 방식
    	  HttpSession HS= request.getSession(); // 248p 서블릿에서 세션 8월 24일에 다시 배운다.
    	  HS.setAttribute("naver", "sky");
	  }//end

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("doPost(1,2)");
		  doGet(request, response);
	  }//end
    
    public void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		//doGet(request, response);
    	System.out.println("doUser(1,2)"); //아직 실행 안된다
  	}//end

}// class end