<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>OTHER SUMMARY</h1>
<table border="1">
	<tr>  <% String processor =  request.getParameter("processor"); %> 

	<% if (processor != null) { %> 
            <td> <p>Processor: </td> <td><%= processor %></td> 
             <% if (processor.equals("Celeron D")) { %>
                  <br/><i>Have you considered a more powerful processor?</i>
             <% } %>
             
        <%   }            else {
        %>
             No processor selected.
        <% 
             }
        %> 
        </td>
</tr>  
<tr>
<td>
        <p>Accessories: </p> </td>
        <% String [] peripherals = request.getParameterValues("peripherals");
        String monitor =  request.getParameter("monitor");
		        
		if (monitor != null) { 
		%> 
		 <td>
	    <% if (peripherals != null) { %>
			<% for (int i = 0; i < peripherals.length; i++) { %>
	   				 <%= peripherals[i] %> <br>
			<% } %>
		<% } %>
	 		 </td>
		
		<% 
		  } 
		%> 
        
       
</table>        
   
</body>
</html>