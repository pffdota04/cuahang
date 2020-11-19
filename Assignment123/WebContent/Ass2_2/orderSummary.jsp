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
		String monitor = request.getParameter("monitor");
		String processor =request.getParameter("processor");
		String [] peripherals = request.getParameterValues("peripherals");
	%>
	
    <table style=" text-align: center " border="1" >
   		 <tr>
			<td>Processor</td>
			<td> 
			
				<% if (processor != null) { %> 
             <%= processor %>
             <% if (processor.equals("Celeron D")) { %>
                  <br/><i>Have you considered a more powerful processor?</i>
             <% } %>
       		 <% } 
           		else {
      		  %>
             	No processor selected.
        	<% 
             }
        	%> 
			</td>
		</tr>
		<tr>
			<td>Accessories</td>
			<td>
					<% if (monitor != null) { %>
						Monitor <br>
					<% } %>
			
					<% if (peripherals != null) { %>
					<% for (int i = 0; i < peripherals.length; i++) { %>
					    <%= peripherals[i] %><br>
					<% } %>
					<% } %>	
					
			</td>
		</tr>
		  
    </table>
</body>
</html>