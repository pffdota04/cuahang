<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>	
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>

<body>
	
	<div class="header">
		<%
			String id = "";
			if (request.getAttribute("email") != null)
				id = (String) request.getAttribute("email");
			request.setAttribute("id", id); // truyen ten admin vao header
		%>
		<%@ include file="/Views/Admin/commom/header.jsp" %>
		
	</div>
	
	<div class="container">
		<h1>Welcome admin</h1>
		<p> This is dashboard. You can use your control with the button in header </p>
	</div>
	
	<div class="footer">
		<%@ include file="/Views/Admin/commom/footer.jsp" %>
	</div>
</body>
</html>