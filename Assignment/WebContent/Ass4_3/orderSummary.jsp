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
		String processor = (String)request.getAttribute("processors");
	    String monitor = (String)request.getAttribute("Monitor");
	    String[] peripherals = (String[])request.getAttribute("peripherals");
	    String ask= (String)request.getAttribute("ask");
	%>
		<table border="1" width="30%" align="center">
            <tr>
                <td>Processors</td>
                <td><%=processor %>
                <%if(ask!=null){
                %>
                <br>
                <%=ask %>
                </td>
                <%    	
                }
                %>
            </tr>
        <%              
        %>
            <tr>
            	<td>Accessories</td>
            	
            	<td>
            	<%if(monitor!=""){ %>
            	<%=monitor%><br>
               	<%} %>
                
                <%
           		if(peripherals!=null){
            	for (String p : peripherals) {
        		%>
                <%=p%> <br><%}}%>
                </td>             
            </tr>
</body>
</html>