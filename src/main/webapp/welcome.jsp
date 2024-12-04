<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
      <%
           HttpSession session1 = request.getSession(false);
           
           if(session1!=null && session1.getAttribute("username")!=null){
        	   String username = (String) session1.getAttribute("username");
      %>
     <div class="container">
		<h1>Welcome <%= username %> !</h1>
	    <p> I am very delighted to have you on my platform.</p>
	    <h3>Explore, connect, and enjoy your journey with us. </h3>
	    <p>You can <a href="logout.jsp">LOGOUT</a> securely</p>
	   
	</div>
	<%
           }else{
        	   response.sendRedirect("login.jsp");
           }
	%>
</body>
</html>