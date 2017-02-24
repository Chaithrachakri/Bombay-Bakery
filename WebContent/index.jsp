<%--
    Document   : index
    Created on : Jan 13, 2012, 5:43:37 PM
    Author     : DR100623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <style>
        #header h2{
        width:100%;
        font-family: Edwardian Script ITC;
        font-size: 80px;
        color: #F3E169;
        text-align: center;
       
    
        }
        body
        
        {
         background-image:url('home.JPG');
        }
        #formset{color:white;
       
        font-family: Bookman Old Style;
        }
        </style>
        <script type="text/javascript">
                function validate()
                {
                     if(document.main.userName.value=="")
                     {
                         alert("please provide Login ID!");
                         document.main.userName.focus();
                         return false;
                     }
                     if(document.main.password.value=="")
                     {
                         alert("please provide Password!");
                         document.main.password.focus();
                         return false;
                     }
                     return (true);
                }
        </script>
    </head>
    <body bgcolor=#F3E169 >
    <div id ="header" >
  <img src=home1.jpg  align="left""/><h2>Bihar Bakery</h2>
        
        </hr>
        </div>
        
        <div id="formset">
        <form action="LoginController" method="post" name="main" onsubmit="javascript:return validate();">
            <table>
                <tr>
                    <td>Login ID</td>
                    <td><input type="text" name="userName"/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"/></td>
       </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Login"/>
                        <input type="button" value="Signup" onclick="window.location.href='Registeration.jsp'"/> </td>
                </tr>
            </table>
        </form>
        </div>
        </div>
         </body>
</html>
<% String msg=request.getParameter("msg");
if(msg!=null){%>
<label><font color="red"><%=msg%></font></label>
<%}%>