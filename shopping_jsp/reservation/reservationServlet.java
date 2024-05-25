package reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reservationServlet
 */
@WebServlet("/insert")
public class reservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		reservationVO vo = new reservationVO();
		String resv_from_ymd = request.getParameter("resv_from_ymd");
		System.out.println(resv_from_ymd.replaceAll("-", ""));		
		vo.setResv_no(request.getParameter("resv_no"));
		vo.setResv_name(request.getParameter("resv_name"));
		vo.setResv_phone(request.getParameter("resv_phone"));
		vo.setResv_from_ymd(request.getParameter("resv_from_ymd").replaceAll("-", ""));
		vo.setResv_to__ymd(request.getParameter("resv_to_ymd").replaceAll("-", ""));
		vo.setResv_rm_number(request.getParameter("resv_rm_number"));
		
		reservationDAO dao = new reservationDAO();
		
		try {
			dao.insert(vo);
			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
