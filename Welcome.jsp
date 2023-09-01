<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <%   
   //setHeader is use for preventing back logout data if first i logged in and then if i logged out and then i click back then it 
   //will showing the logged out page not login page so to get the login page after clicking back we have to use setHeader method 
   //present in response object....
   response.setHeader("Cache-Control", "no-control, no-store, must-revalidate");  //Http 1.1
		   
		   response.setHeader("Pragma", "no-cache"); //Http 1.0
		   
		   response.setHeader("Expires", "0"); //proxies server
   
   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("Login.jsp");
   }
   
   %>
   
     Welcome ${username}
     
     <a href="Videos.jsp">Click here for videos</a>
     
     <form action="Logout">
     
     <input type="submit" value="logout">
     
     </form>
</body>
</html>