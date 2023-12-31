package customer.controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.controller.Controller;
import customer.dao.NoticeDao;
import customer.vo.Notice;

public class NoticeEditProcController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("NoticeEditProcController~~~~~~~~~~");
		
		request.setCharacterEncoding("utf-8");
		String seq = request.getParameter("c");
		String title = request.getParameter("title");
		String content = request.getParameter("content");

	


		Notice n = new Notice();
		n.setTitle(title);
		n.setContent(content);
		n.setSeq(seq);


		NoticeDao dao = new NoticeDao();
		//dao.update(n); //모델로 보내는 방식
		dao.update2(seq, title, content);

		
		request.setAttribute("n", n);
		request.getRequestDispatcher("/WEB-INF/view/customer/noticeDetail.jsp").forward(request, response);
		//request.getRequestDispatcher("noticeDetail.do?c="+seq).forward(request, response);
		//이건 양식제출 한번 더 뜸. seq를 다시 받아와서.
		//response.sendRedirect("noticeDetail.do?c="+seq);
		
	}
	

}
