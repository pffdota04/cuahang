package com.servlet2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.client.RequestContext;
@WebServlet(name ="Servlet5",urlPatterns= {"/ass5/servlet5"})
public class servlet5 extends HttpServlet{

	private static final long serialVersionUID = 1L;

    public servlet5() {
        super();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try
		{
			int dem=0;
			String customerName = request.getParameter("customerName");
			String quantity = request.getParameter("quantity");
			String customerPhone = request.getParameter("customerPhone");
			String customerEmail = request.getParameter("customerEmail");
			String NumberCredit = request.getParameter("NumberCredit");
			String processor =  request.getParameter("processor");
			String ExpirationYear = request.getParameter("ExpirationYear");
			String[] peripherals = request.getParameterValues("peripherals");
		
			String processor_error =  ""; 

				if (processor != null) { 
			             }
				else {
					processor_error="Chon o day";
				}
				
			String name_error = "", quan_error="", phone_error="", email_error="",credit_error="";
			
			if(customerName == "")
			{
			name_error ="*dmm nhap ten vao";	
			System.out.println("*O day nua ne");			
			dem++;
			}		
			if(quantity == "")
				{quan_error ="*O day nua";	dem++;}		
			if(customerPhone == "")
				{phone_error ="*Cho xin sdt luon ban oi";	dem++;}	
			if(customerEmail == "")
				{email_error ="*email luon ne`";	dem++;}	
			if(NumberCredit == "")
				{credit_error ="*Cho nay nua ><";	 dem++;}	
			//error
			request.setAttribute("name_error", name_error);
			request.setAttribute("quan_error", quan_error);
			request.setAttribute("phone_error", phone_error);
			request.setAttribute("email_error", email_error);
			request.setAttribute("credit_error", credit_error);
			request.setAttribute("processor_error", processor_error);
			//reset
			request.setAttribute("quantity", quantity);
			request.setAttribute("customerName", customerName);
			request.setAttribute("customerPhone", customerPhone);
			request.setAttribute("email_error", email_error);
			request.setAttribute("customerEmail", customerEmail);
			request.setAttribute("NumberCredit", NumberCredit);
			request.setAttribute("processor", processor);
			request.setAttribute("peripherals", peripherals);
			request.setAttribute("Expiration", ExpirationYear);
			String url1 ="ass5.jsp";
			if(dem==0)
				url1="rep.jsp";			
			RequestDispatcher rq= request.getRequestDispatcher(url1);
			rq.forward(request, response);	
    	}
		catch(Exception e) {
		}
	}
	
}
