<%-- 
    Document   : buymedicine
    Created on : 23 Oct, 2019, 10:41:52 PM
    Author     : win 10
--%>

<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<table id="customers">
  <tr>
    <th>username</th>
    <th>email</th>
    <th>address</th>
    <th>mobile</th>
    <th>medecine</th>
    <th>collect Medicine</th>
  </tr>
  <tr>
  <form>  <td><input type="text" value="raj" name="name"></td>
    <td><input type="text" value="dsafsa@fdfas" name="email"></td>
    <td><input type="text" value="fasdffs" name="address"></td>
    <td><input type="text" value="741852" name="mobile"></td>
    <td><input type="text" value="raj" name="medicine"></td>
 <td> <input type="submit" name="submit" value="buy now"></td> 
  </form>
   
  </tr>
  <tr>
  <form>  <td><input type="text" value="raj" name="name"></td>
    <td><input type="text" value="dsafsa@fdfas" name="email"></td>
    <td><input type="text" value="fasdffs" name="address"></td>
    <td><input type="text" value="741852" name="mobile"></td>
    <td><input type="text" value="raj" name="medicine"></td>
    <td> <input type="submit" name="submit" value="buy now"></td></form>
 
  </tr>
  <tr>
  <form> <td><input type="text" value="raj" name="name"></td>
    <td><input type="text" value="dsafsa@fdfas" name="email"></td>
    <td><input type="text" value="fasdffs" name="address"></td>
    <td><input type="text" value="741852" name="mobile"></td>
    <td><input type="text" value="raj" name="medicine"></td>
  <td> <input type="submit" name="submit" value="buy now"></td></form>
   
  </tr>
  <tr>
  <form>   <td><input type="text" value="raj" name="name"></td>
    <td><input type="text" value="dsafsa@fdfas" name="email"></td>
    <td><input type="text" value="fasdffs" name="address"></td>
    <td><input type="text" value="741852" name="mobile"></td>
    <td><input type="text" value="raj" name="medicine"></td>
     <td> <input type="submit" name="submit" value="buy now"></td>
    </form>
  
  </tr>
  <tr>
  <form>  <td><input type="text" value="raj" name="name"></td>
    <td><input type="text" value="dsafsa@fdfas" name="email"></td>
    <td><input type="text" value="fasdffs" name="address"></td>
    <td><input type="text" value="741852" name="mobile"></td>
    <td><input type="text" value="raj" name="medicine"></td>
    
     <td> <input type="submit" name="submit" value="buy now">
    <form>
   </tr>
  <tr>
  <form> <td><input type="text" value="raj" name="name"></td>
    <td><input type="text" value="dsafsa@fdfas" name="email"></td>
    <td><input type="text" value="fasdffs" name="address"></td>
    <td><input type="text" value="741852" name="mobile"></td>
    <td><input type="text" value="raj" name="medicine"></td>
   <td> <input type="submit" name="submit" value="buy now">
  </form>
   
 </table>

    
    
    
    
    
    
    
    
    <%@page import="java.sql.*,java.util.*"%>

<%        
    
    
          String name=request.getParameter("name");
          String address = request.getParameter("address");
          String email=request.getParameter("email");
          String mobile=request.getParameter("mobile");
          String medecine=request.getParameter("medcine");
          

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediseva", "root", "abhi");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into buy(name,address,email,mobile,medicine)values('"+name+"','"+address+"','"+email+"','"+medecine+"','"+mobile+"')");
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

