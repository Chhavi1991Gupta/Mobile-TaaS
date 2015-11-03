<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Team 25</title>
</head>
<body bgcolor=grey>
<br>
Cloudlets
<br>
<br>
=======================================================================



<%long startTime=(Long)session.getAttribute("startTime"); %>


<%long endTime=(Long)session.getAttribute("endTime");%>
<%double dif=(Double)session.getAttribute("dif"); %>
<%double payment=(Double)session.getAttribute("payment"); %>


<br>
The time of instance creation is(in seconds) : <%=startTime %>

<br>

The time when instance stopped(in seconds) : <%=endTime%>

 <br>
Total Time (in seconds) : <%=dif %>

<br>

Cloudents charges based on Operating System selected, amount of RAM, Internal Storage and processing power.

<br>

Charge of Instance usage(in $) : <%= payment %>

</body>
</html>