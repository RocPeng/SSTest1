<%@page import="util.FileUtil"%>
<%@page import="org.apache.commons.io.Charsets"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="java.io.File"%>
<%@page import="com.alibaba.fastjson.JSONObject"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
<%
		String username = "";
		String password = "";%>
	<form action="dologin.jsp" name="loginForm" method="post">
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="username"></td>
			<tr />
			<tr>
				<td>密码</td>
				<td><input type="password" name="password"></td>
			<tr />
			<tr>
				<td colspan="2"><input type="submit" name="登陆"></td>
			<tr />
		</table>
	</form>
</body>
</html>