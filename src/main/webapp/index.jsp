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
	<img  src="./images/main.png" style="max-width: 100%;"><br>
	<img src="./images/img1.jpg">
	<img src="./images/img2.jpg">
	<img src="./images/img3.jpg">
	<img src="./images/qrcode.png" style="width: 200px;height: 200px;"><br>
	<img src="./images/img4.jpg" onclick="window.location.href='login.jsp'"">
	<img src="./images/img5.jpg">
	<img src="./images/img6.jpg">
	<img src="./images/img7.jpg">
	<img src="./images/img8.jpg">
</body>
</html>