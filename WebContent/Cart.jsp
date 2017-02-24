<%-- 
    Document   : Cart
    Created on : Dec 9, 2013, 6:35:31 PM
    Author     : MSLC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.bakery.beans.*"%>
<%
    ArrayList<Display> al = (ArrayList<Display>)request.getAttribute("itemCatalogue");
    Iterator itr = al.iterator();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <script>
        function validate()
        {
        	var x=document.myform.phoneno.value;
        	 
        	if(x!=10)
        	{
        		alert("enter valid phone number!");
        		
        	return false;
        	}
       
        </script>
    </head>
    <body  >
    
        <h2 align="Center">Cart</h2><img src=cart1.jpg width=40% height=40%  align="right""/>
        <h3>Items Selected</h3>
				   <table border="1">
				      <thead>
				        <th>Item Name</th>
				        <th>Item Price</th>
				        <th>Item MFD</th>
				        <th>Selct Quantity</th>
				      </thead>
      
           <tbody>
        <% 
          int i=0;
          while(itr.hasNext())
          {
            Display display = (Display)itr.next();
            i++;
        %>
            <tr>
                <td><%=display.getitemName() %></td>
                <td><%=display.getitemPrice() %></td>
                <td><%=display.getitemMfd() %></td>
                <td><%=display.getQuantity() %></td>
            </tr>
        <% } %>
          </tbody>
        </table>
        <form action="AddressUpdateController" method="post" name="myform" onsubmit=return validate()>
            <table align="center">
                <tr>
                    <td>Address</td>
                   <td><input type="text" name="address"/></td>
                
                
                    <td>Contact Number</td>
                    <td><input type="text" name="phoneno"/></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="Submit" /></td>
                </tr>
            </table>
        </form>
       
    </body>
</html>
