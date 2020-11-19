<%@ page language="java" contentType="text/html; charset=UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" conttent="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
 <form action="/Assignment/Servlet4_2"  method="post">
  <table cellspacing="5">
    <tr>
      <td align="right">Number to purchase:</td>
      <td><input type="text" name="quantity"></td>
    </tr><tr>
      <td align="right">Your name:</td>
      <td> <input type="text" name="customerName"></td>
    </tr><tr>
      <td align="right">Your email:</td>
      <td> <input type="text" name="customerEmail"></td>
    </tr><tr>
      <td></td>
      <td><input type="submit" value="Place Order"></td>
    </tr>
  </table>
</form>
</body>
</html>