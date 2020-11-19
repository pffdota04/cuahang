<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%
    String name = request.getParameter("customerName");
    String email = request.getParameter("customerEmail");
    String quantity = request.getParameter("quantity");
  %>

  <h2>Order Confirmation</h2>
  <p>
    Thank you for your order of <%= quantity %> widgets, <%= name %>.
  </p>
  <p>
    You will shortly receive an email confirmation at <%= email %>.
  </p>
</body>

</html>