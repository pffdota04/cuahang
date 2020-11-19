package com.servlet2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		try
		{
			String customerName = request.getParameter("customerName");
			String nameError = request.getParameter("nameError");
			String name_error = "";
			
			PrintWriter printwriter= response.getWriter();
			System.out.print(customerName);
			if(customerName == "")
			{
			name_error ="May chua nhap ten kia. Use brain, please...";
			request.setAttribute("name_error", name_error);
			System.out.print("duma    ");
			
			}
			
			request.setAttribute("try", "this is a fucking content");
			RequestDispatcher rq= getServletContext()
					.getRequestDispatcher("/first.jsp");
			rq.forward(request, response);	
			
    	}
		catch(Exception e) {
		}
	}

}
