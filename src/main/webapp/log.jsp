<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="util.FileUtil"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shadowsocks.log</title>
</head>
<body>
<h1>/var/log/shadowsocks.log</h1>
<%
	BufferedReader br=new BufferedReader(new FileReader(new File(FileUtil.currentLogPath)));
	String str=null;
	while ((str= br.readLine()) != null) {
    	out.println(str);
    	out.println("<br/>");
	}
br.close();
%>
<hr>
</body>
</html>