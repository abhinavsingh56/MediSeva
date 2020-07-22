<%-- 
    Document   : donate1
    Created on : 23 Oct, 2019, 9:41:40 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="login-box">
    <img src="avatar.png" class="avatar">
        <h1>Add NGO here</h1>
            <form>
            
            <input type="text" name="name" placeholder="Enter donater name">
             
            <input type="text" name="mname" value="paracetamol">
            <input type="text" name="price"  value="$85" >
            <input type="text" name="mfgdate" value="18-15-14">
            <input type="text" name="expdate" value="15-12-19">
            
            <input type="submit" name="submit" value="donate">
              
            </form>
        
        
        </div>
    <style type="text/css">body{
    margin: 0;
    padding: 0;
   
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}
.login-box{
    width: 320px;
    height: 490px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}
.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 20px;
}
.login-box input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}

.login-box a{
    text-decoration: none;
    font-size: 14px;
    color: #fff;
}
.login-box a:hover
{
    color: #39dc79;
}



</Style>

<%@page import="java.sql.*,java.util.*"%>

<%        
    
    
          String name=request.getParameter("name");
          String mname = request.getParameter("mname");
          String price=request.getParameter("price");
          String mfgdate=request.getParameter("mfgdate");
          String expdate=request.getParameter("expdate");
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediseva", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into donate(name,mname,price,mfgdate,expdate)values('"+name+"','"+mname+"','"+price+"','"+mfgdate+"','"+expdate+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


<h>this is the change that 
i have made </h>



    </body>
</html>
