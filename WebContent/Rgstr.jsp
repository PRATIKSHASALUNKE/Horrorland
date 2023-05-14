<%@page import="javax.servlet.*,java.sql.*,java.io.*,javax.sql.*" %>

<html>
<head>
<title>
Register Page
</title>
<style>
.heading1 {
      color:Red;
      text-align:center;
      font-family:Ravie;
      text-shadow:3px 2px Cyan;
}
.heading2 {
      color:Red;
      text-align:center;
      font-family:Ravie;
}
.body1 {
      background-color:Black; 
}
.hr1{
      color:Red;
}
a:hover {
      color: Red;
}
a:link {
      color:Purple;
}
.heading3 {
      color:Red;
      text-align:left;
      font-family:Ravie;
}
</style>
</head>
<body class="body1">
<%
	  try{
//	  response.setContentType("text/html");	  
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost/jsp","root","");
	  Statement st=con.createStatement();
	  String name=request.getParameter("name");
	  String gender=request.getParameter("gender");
	  String email=request.getParameter("email");
	  String password=request.getParameter("password");
	  st.executeUpdate("insert into users values('"+name+"','"+gender+"','"+email+"','"+password+"')");
//	  out.println("You have registered with us successfully!");
	  response.sendRedirect("RegistrationSuccessful.html");
	  }
	  catch(Exception e)
	  {
	   System.out.println(e);	
	  }
	  %>
 </body>
 </html>	  