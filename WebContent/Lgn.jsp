<%@page import="javax.servlet.*,java.sql.*,java.io.*,javax.sql.*" %>

<html>
<head>
<title>
Login Page
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
	//	response.setContentType("text/html"); 
	 	Class.forName("com.mysql.jdbc.Driver");
	 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/jsp","root","");
	 	Statement st=con.createStatement();
	 	String username=request.getParameter("username");
	 	String password=request.getParameter("password");
	 	ResultSet rs=st.executeQuery("select * from users where Name='"+username+"' and Password='"+password+"'");
	 	if(rs.next())
	 	{
	     //out.println("Login Successful!");
	     response.sendRedirect("LoginSuccessful.html");
	 	}
	 	else
	 	{
	 	 //out.println("User not found!");
	 	 response.sendRedirect("LoginFailed.html");
	 	}
	 }
	 catch(Exception e)
	 {
	  System.out.println(e);	
	 }
	 %>	 
 </body>
 </html>