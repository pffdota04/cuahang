<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="header">
		<%
			String kqQuery = "";
		if (request.getAttribute("hasError") != null)
			kqQuery = (String) request.getAttribute("hasError");
		String kq="";
		if(request.getAttribute("kq")!=null)
				kq=(String) request.getAttribute("kq");
		request.setAttribute("kqInsert", kqQuery);
		%>
		<%@ include file="/Views/Admin/commom/header.jsp"%>
	</div>

	<div class="container">
		<h1>Account Center</h1>
		<form action="${pageContext.request.contextPath}/choose-in-account"
				method="post">
			<input type="submit" value="Insert" name="choose" />
			<input type="submit" value="Update" name="choose" />
			<input type="submit" value="Delete" name="choose" />
		</form>
		<% if(kq.equals("1")){%> <%@ include file="/Views/Admin/container/account/insert.jsp" %> <%}
		else if(kq.equals("2")) {%><%@ include file="/Views/Admin/container/account/update.jsp" %> <%} 
		else if(kq.equals("3")){%> <%@ include file="/Views/Admin/container/account/delete.jsp"%> <%} %>
		Thong bao: <%=kqQuery%>!
	</div>
	<div class="footer">
		<%@ include file="/Views/Admin/commom/footer.jsp"%>
	</div>

</body>
</html>