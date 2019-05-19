<%@page import="org.omg.CORBA.portable.ApplicationException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>Testing JSPs</h1>
<%!
public int add(int a,int b){
	return a+b;
}

public String addString(String a, String b){
	return a+b;
}

%>

<%
int i=1;
int j=2;
int k = i+j;
String a="hhh";
String b="mmm";
out.println("Value of k is: "+k);
%>

<%
k = add(67576,897);
%>
<br>
Value of k IS: <%=i+j %>
<br>
<%
for(int var=0;var<5;var++){%>
	<%=var %>
	<br>
<% }
%>
<%=  %>
</body>
</html>