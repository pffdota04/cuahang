package com.servlet2;

import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class servlet2
 */
@WebServlet(name ="Servlet2",urlPatterns= {"/ass3/servlet2"})

public class servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servlet2() {
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
		response.setContentType("text/html;charset=UTF-8");
		try
		{
			String quantity= request.getParameter("quantity");
			String customerName = request.getParameter("customerName");
			String customerEmail = request.getParameter("customerEmail");
			PrintWriter printwriter= response.getWriter();
			if(quantity!=""&&customerName!=""&&customerEmail!="")
			{
				
				RequestDispatcher rq= request.getRequestDispatcher("Thanks.jsp");
				rq.forward(request, response);
			}
			else {
				response.sendRedirect("fail.jsp");
			}
    	}
		catch(Exception e) {
		
		}
	}

}


