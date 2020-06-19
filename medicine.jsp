<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<div class="login-box">
    
        <h1>Add Medicine</h1>
            <form>
            
            <input type="text" name="medicine" placeholder=" enter name of Medicine">
          
            <input type="password" name="price" placeholder="Enter price">
         
            <input type="text" name="mfgdate" placeholder="Enter mfg date">
         
            <input type="text" name="expdate" placeholder="Enter exp date">
          
           
 
            <input type="submit" name="btn" value="Add">
              
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

</style>


<%@page import="java.sql.*,java.util.*"%>

<%
          String medicine = request.getParameter("medicine");
          String price=request.getParameter("price");
          String mfgdate=request.getParameter("mfgdate");
          String expdate=request.getParameter("expdate");
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediseva", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into medicine(medicine,price,mfgdate,expdate)values('"+medicine+"','"+price+"','"+mfgdate+"','"+expdate+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>




</body>
</html>