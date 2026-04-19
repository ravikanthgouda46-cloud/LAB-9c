<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

<%
String name = request.getParameter("uname");

if(name != null && !name.trim().equals("")) {
    out.print("<h2>Welcome " + name + "</h2>");
    out.print("<p>Session has started...</p>");

    // Store value in session
    session.setAttribute("user", name);

    out.print("<p>Your name has been stored in session object</p>");

    // Set session expiry time to 60 seconds
    session.setMaxInactiveInterval(60);

    out.print("<p>Session will expire in <b>1 minute</b></p>");
    out.print("<p>Click below within 1 minute to check session:</p>");
} else {
    out.print("<p style='color:red;'>Invalid Name!</p>");
}
%>

<br>
<a href="second.jsp">Display Session Value</a>

</body>
</html>