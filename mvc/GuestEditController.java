package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter;									//추가
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.sql.GuestDTO;
import net.tis.sql.GuestSQL;


@WebServlet("/gedit.do")
public class GuestEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request,response); //필수
	}//end

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request,response); //필수
	}//end
	
	public void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//사번 제외 수정한 데이터를 받기
		int    Gsabun = Integer.parseInt(request.getParameter("sabun"));
    String Gname  = request.getParameter("name");
    String Gtitle = request.getParameter("title");
    int    Gpay   = Integer.parseInt(request.getParameter("pay"));
    String Gemail = request.getParameter("email");
    
		GuestDTO DTO = new GuestDTO();
		GuestSQL GS  = new GuestSQL();
		
		DTO.setSabun(Gsabun);
		DTO.setName(Gname);
		DTO.setTitle(Gtitle);
		DTO.setPay(Gpay);
		DTO.setEmail(Gemail);
		
		GS.dbEdit(DTO);
		System.out.println("GuestEditController.java 수정성공");
		//자원을 뿌릴일이 없기때문에 sendRedirect 로 이동하면 된다.
		//RequestDispatcher dis = request.getRequestDispatcher("glist.do");
		//dis.forward(request, response);
		response.sendRedirect("glist.do");
	}//end

}
