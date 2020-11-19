<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>  
</head>
<body>
<%
	String name_error= "";
	String quan_error= "";
	String phone_error= "";
	String email_error= "";
	String credit_error= "";
	String processor_error="";
	if( request.getAttribute("name_error")!=null)
		name_error= (String) request.getAttribute("name_error");
	if( request.getAttribute("quan_error")!=null)
		quan_error= (String) request.getAttribute("quan_error");
	if( request.getAttribute("phone_error")!=null)
		phone_error= (String) request.getAttribute("phone_error");
	if( request.getAttribute("email_error")!=null)
		email_error= (String) request.getAttribute("email_error");
	if( request.getAttribute("credit_error")!=null)
		credit_error= (String) request.getAttribute("credit_error");
	if( request.getAttribute("processor_error")!=null)
		processor_error= (String) request.getAttribute("processor_error");
	
	String quantity= (String) request.getAttribute("quantity");
	String customerName= (String) request.getAttribute("customerName");
	String customerPhone= (String) request.getAttribute("customerPhone");
	String customerEmail= (String) request.getAttribute("customerEmail");
	String NumberCredit= (String) request.getAttribute("NumberCredit");
	String processor = (String) request.getAttribute("processor");
	String[] peripherals = (String[]) request.getAttribute("peripherals");
	String Year1 = (String) request.getAttribute("Expiration");
	if(Year1 ==null)
		Year1="2008";
	if(quantity==null)
		quantity="";
	if(customerName==null)
		customerName="";
	if(customerPhone==null)
		customerPhone="";
	if(customerEmail==null)
		customerEmail="";
	if(NumberCredit==null)
		NumberCredit="";
	if(processor == null)
		processor="Celeron D";
	%>
	<%!
	    public boolean find(String[] list, String target)
	    {
	    	if(list == null)
	    		return false;
	    	for(int i=0; i<list.length; i++)
	    		if(target.equals(list[i]))
	    			return true;
	    	return false;
	    }
%>
    <h1>Enter You Information</h1>
    <form action="servlet5" method="post" >
        <table cellspacing="5">
            <tr>
                <td align="right">Number to purchase:</td>
                <td><input type="number" name="quantity" value="<%=quantity%>">  <%= quan_error%>  </td>
            </tr>
            <tr>
                <td align="right">Your name:</td>
                <td>  <input type="text" name="customerName" value="<%=customerName %>">  <%= name_error%> </td>           
            </tr>
            <tr>
                <td align="right">Your phone:</td>
                <td> <input type="text" name="customerPhone" value="<%= customerPhone%>">  <%= phone_error%>  </td>
             
            </tr>
            <tr>
                <td align="right">Your email:</td>
                <td> <input type="text" name="customerEmail" value="<%= customerEmail%>">  <%= email_error%>  </td>
            </tr>

            <tr>
                <td align="right" rowspan="3">Credit Information</td>
                <td>
            <tr>
                <td align="left"> Number:
                    <input type="text" name="NumberCredit" value="<%= NumberCredit%>"> <%= credit_error %></td>
            </tr>
            <tr>
                <td align="left">Expiration Date:
                    <select name="ExpirationYear">
                        <% int x=Integer.parseInt(Year1);
                        for(int year = 2008; year<2021; year++)  { %>
                        	<option value="<%=year%>"  
                        	<% if(x == year) {%>    
                        	 	selected 
                        	<%}%>                     
                        	 >
                        	 <%=year%> </option>
                        	
                        <%}%>
                      </select>
                </td>
            </tr>
            </td>
            </tr>
        </table>
        <table>
            <tr>
                <th>Processor</th>
                <th>Accessories</th>
            </tr>
            <tr style="padding-right: 20px">
                <td rowspan="2">
                    <INPUT TYPE="radio" NAME="processor" VALUE="Celeron D"
                    <% if(processor.equals("Celeron D"))  { %> CHECKED <% } %>
                    >Celeron D<BR>
                    <INPUT TYPE="radio" NAME="processor" VALUE="Pentium IV" 
                    <% if(processor.equals("Pentium IV"))  { %> CHECKED <% } %>
                    >Pentium IV<BR>
                    <INPUT TYPE="radio" NAME="processor" VALUE="Peium D" 
                    <% if(processor.equals("Peium D"))  { %> CHECKED <% } %>
                    >Peium D<BR>
                </td>

                <td> <INPUT TYPE="checkbox" NAME="monitor"> Monitor<br></td>
            </tr>
            <tr>
                <td>
                    <SELECT NAME="peripherals" SIZE="3" MULTIPLE>
                          <OPTION VALUE="Camera"
                   	  		<% if(find(peripherals, "Camera"))  {%> SELECTED <%} %> 
                          >Camera
                         <OPTION VALUE="Printer" 
                             <% 	if(find(peripherals, "Printer"))  {%> SELECTED <%} %> 
                          >Printer
                          <OPTION VALUE="Scanner" 
                             <% 	if(find(peripherals, "Scanner"))  {%> SELECTED <%} %> 
                          >Scanner
                    </SELECT>
                </td>
            </tr>
        </table>
        <input type="submit" value="Conjigure">
    </form>
   
</body>

</html>