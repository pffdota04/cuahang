<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
--
 
do it in .css
.clearfix::after {
	content: " ";
	display: table;
	clear: both;
}
</style>
</head>
<body>
	<% 	String id1 ="" ; 
		if (request.getAttribute("email") != null) 
			id1 = (String) request.getAttribute("email"); %> 
	<p style="text-align: center;">-------example header-------</p>
	<ul class="main-nav" style="list-style: none;">
		<li><a href="/CuaHang/Views/Admin/container/home.jsp">Home</a></li>
		<li><a href="/CuaHang/Views/Admin/container/account/account.jsp">Account</a></li>
		<li><a href="/CuaHang/Views/Admin/container/product.jsp">Product</a></li>
		<li><a href="#"> [<%=id1 %>] </a></li>
	</ul>
	<div class="clearfix"></div>
	<p style="text-align: center;">-----------------end header-----------</p>
	<div class="clearfix"></div>
</body>
</html>