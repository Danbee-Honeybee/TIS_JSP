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


@WebServlet("/gdetail.do")
public class GuestDetailController extends HttpServlet {
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
		
		out.println("<h2>[GuestDetailController] 단독실행금지 </h2>");
		
		int Gdata = Integer.parseInt(request.getParameter("idx"));
		GuestSQL GS = new GuestSQL();
		GuestDTO DTO = GS.dbDetail(Gdata);
		request.setAttribute("DTO", DTO);
		
		RequestDispatcher dis = request.getRequestDispatcher("guestDetail.jsp");
		dis.forward(request, response);
	}//end

}
