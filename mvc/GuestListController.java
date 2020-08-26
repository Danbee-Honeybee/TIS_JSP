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
		
		out.println("<h2>[GuestListController] 오후 2:04</h2>");
		
		/*페이지 관련 전역변수*/
	  String pnum; //<a href="guestList.jsp?pageNum=14"> [14] </a>
	  int pageNUM, pagecount;  
	  int start, end;
	  int startpage, endpage ;
	  int tmp; 
	 
	  String sqry;
	  String skey, sval;
	  String returnpage;
		
		GuestDTO DTO = new GuestDTO();
		GuestSQL GS = new GuestSQL();
		
		/* LG가 모든 데이터를 가지고 있다. (사번, 이름, 제목, 급여, 날짜, 조회수, 메일) 
		 * 이 정보를 guestList.jsp 로 넘겨야한다. */
		
		ArrayList<GuestDTO> LG = GS.dbSelect(); //객체 데이터 덩어리
		int Gtotal = GS.dbGtotal(); 						//레코드 총 갯수 (숫자만)
		
		/* LS와 Gtotal을 어떻게 넘길것인가? request.setAttribute("가짜", 진짜) 로 */
		
		request.setAttribute("LG", LG);
		request.setAttribute("Gtotal", Gtotal);
		
		/*  그럼 자원을 보낼때는? request.setAttribute("가짜", 진짜);
				RequestDispatcher는 데이터 자원을 보낼 문서를 명명해주고싶을때 사용
			 	이제 guestList.jsp 를 단독실행하면 에러된다. 
			 	glist.do = GuestListController.java 문서 단독실행 가능
			 	자원을 가지고 있는 GuestListController.java에서 guestList로 자원을 포워딩 해줘야한다. */
		
		RequestDispatcher dis = request.getRequestDispatcher("guestList.jsp");
		dis.forward(request, response);
		
		out.println("<a href='guestWrite.jsp'>신규등록</a>");
	}//end

}
