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
   response.setHeader("Cache-Control", "no-control, no-store, must-revalidate");
   
   response.setHeader("Pragma", "no-cache"); //Http 1.0
   
   response.setHeader("Expires", "0"); //proxies server
   
   if(session.getAttribute("username")==null)
   {
	   response.sendRedirect("Login.jsp");
   }
   
   %>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/COv52Qyctws?si=5Nhj1iKGgevuu-v1" 
  title="YouTube video player" frameborder="0"
   allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
   allowfullscreen></iframe>
    Videos here....
</body>
</html>