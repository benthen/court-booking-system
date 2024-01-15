package com.ben;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetRequest
 */
@WebServlet("/GetRequest")
public class GetRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String String = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String position = request.getParameter("role");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirm = request.getParameter("confirmPassword");
		InsertRegister insert = new InsertRegister(userid, name, position, email, password, confirm);
		try {
			boolean valid = insert.insertData(MySQL.getInstance().getSQLConnection());
			if (valid == true) {
				HttpSession session = request.getSession(true);
//				session.setAttribute("currentSessionUser", user);
				response.sendRedirect("Login.jsp"); // logged-in page
			} else
				response.sendRedirect("Register.jsp"); // error page

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
