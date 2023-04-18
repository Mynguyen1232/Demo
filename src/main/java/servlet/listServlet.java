package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class listServlet
 */
@WebServlet({"/listServlet", "/detailproduct"})
public class listServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 * String uri = req.getRequestURI(); List<Item> listItem = Arrays.asList(new
		 * Item[] { new Item("Table Lamp Lucia Tucci Tous", "item_1.jpg", 500, 2309),
		 * new Item("Nokia 2023", "item_2.jpg", 5009, 2309), new Item("Nokia 2019",
		 * "item_1.jpg", 500, 0.1), new Item("Nokia 2020", "item_1.jpg", 500, 0.1)});
		 * if(uri.contains("listServlet")) { req.setAttribute("listItem", listItem);
		 * req.getRequestDispatcher("/views/listProduct.jsp").forward(req, resp); }else
		 * if (uri.contains("detailproduct")) { int idProduct =
		 * Integer.parseInt(req.getParameter("idProduct")); req.setAttribute("item",
		 * listItem.get(idProduct));
		 * req.getRequestDispatcher("/views/detailproduct.jsp").forward(req, resp); }
		 */
		String uri = req.getRequestURI();
		List<Item> listItem = Arrays.asList(new Item[] {
				new Item("Nokia 2020", "item_1.jpg", 500, 0.1),
				new Item("Nokia 2023", "item_2.jpg", 500, 0.1),
				new Item("Nokia 2019", "item_3.jpg", 500, 0.1),
				new Item("Nokia 2020", "item_4.jpg", 500, 0.1)});
			if(uri.contains("listServlet")) {
				req.setAttribute("listItem", listItem);
				req.getRequestDispatcher("/Asignment/login.html").forward(req, resp);
			}else if (uri.contains("detailproduct")) {
				int idProduct = Integer.parseInt(req.getParameter("idProduct"));
				req.setAttribute("item", listItem.get(idProduct));
				req.getRequestDispatcher("/views/detailproduct.jsp").forward(req, resp);
			}
	}

	

}
