package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter;									//추가

import javax.servlet.RequestDispatcher; 		//추가
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.sql.GuestDTO;
import net.tis.sql.GuestSQL;


@WebServlet("/ginsert.do")
public class GuestInsertController extends HttpServlet {
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
		
		int    Gsabun = Integer.parseInt(request.getParameter("sabun"));
    String Gname  = request.getParameter("name");
    String Gtitle = request.getParameter("title");
    int    Gpay   = Integer.parseInt(request.getParameter("pay"));
    String Gemail = request.getParameter("email");
		
    System.out.println("데이터 : "+Gsabun+ " " +Gname+ " " +Gtitle+ " " +Gpay+ " " +Gemail);
    
		out.println("<h2>GuestInsertController.java</h2>");
		out.println("<img src='images/bar.gif'><p>");
		
		GuestDTO DTO = new GuestDTO();
		GuestSQL GS = new GuestSQL();
		
		DTO.setSabun(Gsabun);
		DTO.setName(Gname);
		DTO.setTitle(Gtitle);
		DTO.setPay(Gpay);
		DTO.setEmail(Gemail);
		
		GS.dbInsert(DTO);
		System.out.println("[GuestInsertController] 저장 성공");
		
		/* 저장 되는순간 glist.do로 이동 */
		response.sendRedirect("glist.do");
		
		/* 그럼 자원을 보낼때는? request.setAttribute("가짜", 진짜);
			 RequestDispatcher는 데이터 자원을 보낼 문서를 명명해주고싶을때 이걸 쓴다.
			 RequestDispatcher dis = request.getRequestDispatcher("glist.jsp");
			 dis.forward(request, response);	*/
		out.println("<a href='guestWrite.jsp'>신규등록</a>");
	}//end

}
