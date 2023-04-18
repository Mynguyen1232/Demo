package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class detailSV
 */
@WebServlet("/detailSV")
public class detailSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Item item = new Item("Nokia 2020", "item_1.jpg", 500, 0.1);
		req.setAttribute("item", item);
		req.getRequestDispatcher("/views/detail.jsp").forward(req, resp);
	}

	

}
