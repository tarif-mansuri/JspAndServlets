<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
The default user from servlet config is :<%= config.getInitParameter("defaultUser")%>
<br>	
<% 
String userName = request.getParameter("name"); 
	if(userName!=null && ! userName.equals("")){
	   session.setAttribute("sessionName", userName);
	   application.setAttribute("applicationUserName", userName);
	   pageContext.setAttribute("pageContextUserName",userName);
	   pageContext.setAttribute("inApplicationScope",userName,pageContext.APPLICATION_SCOPE);
   }
%>
<br>
User name in the request object is :<%= request.getParameter("name") %>
<br>
User name in the request object is :<%= userName %>
<br>
User name in the session object is :<%= session.getAttribute("sessionName") %>
<br>
User name in the application context object is :<%= application.getAttribute("applicationUserName") %>
<br>
User name in the page context object is :<%= pageContext.getAttribute("pageContextUserName") %>
<br>
User name in the application context object set using pageContext is :<%= application.getAttribute("inApplicationScope") %>
<br>
</body>
</html>