
<%@ page language="java" contentType="text/html" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Success</title>
</head>
<body>

	<h1>Login Success</h1>
	<%!Date date = null;%>

	<%
response.sendRedirect("index.html");
date= new Date();
%>
</body>
</html>