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


@WebServlet("/glist.do")
public class GuestListController extends HttpServlet {
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
		
		/*페이지 관련 전역변수*/
	  String pnum;
	  int pageNUM, pagecount;  
	  int start, end;
	  int startpage, endpage;
	  int tmp; 
	 
	  String sqry;
	  String skey, sval;
	  String returnpage;
		
	  /*사용자가 선택한 페이지넘버*/
	  pnum = request.getParameter("pageNum"); //14
	  if(pnum==null||pnum=="") {pnum="1";}
	  pageNUM = Integer.parseInt(pnum);
	  
	  
		GuestDTO DTO = new GuestDTO();
		GuestSQL GS = new GuestSQL();
		
		int Gtotal = GS.dbGtotal();
		
		/*14페이지를 선택했을때 가장 위에 있는 행번호와 끝번호*/
		start = (pageNUM-1)*10+1; //행번호 131번
		end   = (pageNUM*10);			//행번호 140번
		
		if(Gtotal%10 == 0) {pagecount = Gtotal/10;}
		else {pagecount = (Gtotal/10)+1;}
		
		tmp = (pageNUM-1)%10; 		//3
		startpage = pageNUM-tmp; 	//11p
		endpage   = startpage+9;	//20p
		if(endpage>pagecount) {endpage=pagecount;}
		
		
		//ArrayList<GuestDTO> LG = GS.dbSelect(); //처음 원본
		ArrayList<GuestDTO> LG = GS.dbSelect(start,end);
		
		
		request.setAttribute("LG", LG);
		request.setAttribute("Gtotal", Gtotal);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("pagecount", pagecount);
		
		RequestDispatcher dis = request.getRequestDispatcher("guestList.jsp");
		dis.forward(request, response);
		
		out.println("<a href='guestWrite.jsp'>신규등록</a>");
	}//end

}
