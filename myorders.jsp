<%-- 
    Document   : regsiteredusers
    Created on : 23 Oct, 2019, 10:35:14 PM
    Author     : win 10
--%>

<<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mediseva";
String userid = "root";
String password = "abhi";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

    
    
    <form >
        
      Email  <input type="email" name="email" placeholder="enter email associated to your account">
        
      <input type="submit" value="my orders">
        
    </form>
    
    
    
    
    
    
    
    
<h1>your orders</h1>
<table border="1">
<tr>
<td> name</td>
<td>address</td>
<td>email</td>
<td>mobile</td>
<td>medicine</td>

</tr>
<%
    
    
    String email=request.getParameter("email");
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from buy where email=email";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("medicine") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
