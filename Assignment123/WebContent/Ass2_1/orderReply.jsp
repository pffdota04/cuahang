<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	    String name = request.getParameter("customerName");
	    String email = request.getParameter("customerEmail");
	    String quantity = request.getParameter("quantity");
	    double pricePerUnit = 9.95;
	    int quantityNumber = Integer.parseInt(quantity);
	    double totalCost = pricePerUnit * quantityNumber;
	  %>
	
	  <h2>Order Confirmation</h2>
	  <p>Thank you for your order of <%= quantity %> widgets, <%= name %>.</p>
	  <p>At $<%= pricePerUnit %>, your bill will be $<%= totalCost %>.</p>
	  <p>You will shortly recieve an email confirmation at <%= email %>.</p>


</body>
</html>