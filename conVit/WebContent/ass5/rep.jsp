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
 	String quantity= (String) request.getAttribute("quantity");
	String customerName= (String) request.getAttribute("customerName");
	String customerPhone= (String) request.getAttribute("customerPhone");
	String customerEmail= (String) request.getAttribute("customerEmail");
	String NumberCredit= (String) request.getAttribute("NumberCredit");
	String ExpirationYear = request.getParameter("ExpirationYear");
	%>
  <h2>Order Confirmation</h2>
  <p>
    Thank you for your order of <%= quantity %> widgets, <%= customerName %>.
    <br>
    This is your number phone: <%= customerPhone%>.
    <br>
    You will shortly receive an email confirmation at <%= customerEmail %>. 
    <br>
    And make payments by credit number: <%=NumberCredit%>, with Expiration Date: <%=ExpirationYear%>
  </p>

  <h2>OTHER SUMMARY</h2>
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