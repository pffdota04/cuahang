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
    String quantity = request.getParameter("quantity");
  %>

  <h2>Order Confirmation</h2>
  <p>
    Thank you for your order of <%=quantity%> widgets.
  </p>

</body>
</html>