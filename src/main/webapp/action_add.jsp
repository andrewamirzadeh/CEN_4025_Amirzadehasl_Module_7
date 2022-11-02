<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results of User Action</title>
</head>
<h1>Results of User Action</h1>
<body>
<%
	String add = request.getParameter("Name");
	String empty = "Your text box was empty bro";
	if(add.isEmpty()){
	%> <%=empty%><%
	}
	else{
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	  try{
		  
		 
		 
		  String url = "jdbc:mysql://localhost:3306/todolists";
		  String username = "root";
		  String password = "Root1234!";
		  Class.forName("com.mysql.jdbc.Driver");
		  Connection con = DriverManager.getConnection(url,username,password);
		 
		  String qry ="INSERT INTO todolist (toDoListItems) values(?)";
		  pstmt = con.prepareStatement(qry);
		  pstmt.setString(1,add); 
		  pstmt.executeUpdate();
		  con.close();

		    }
		     catch(Exception ex){
		      out.println(ex);
		     }
	}
		    %>
		    <br>
<a href="NewFile.jsp">Return to main screen</a>

</body>
</html>