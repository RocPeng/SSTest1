<%-- 添加用户逻辑页面,用以执行添加操作/显示添加异常等并反馈到页面上 --%>
<%@page import="dao.DaoManager"%>
<%@page import="dao.IUserDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加新用户</title>
	</head>
	<body>
	
		<h1><a href="list.jsp">返回主页</a></h1>
		<hr/>
	
		<%
			String port = request.getParameter("port");// 获取adduser.jsp中表单提交的用户名数据
			String password = request.getParameter("password");// 获取adduser.jsp中表单提交的登陆密码数据
			
			// 验证表单为空
			if(port == null || "".equals(port.trim())){
				request.setAttribute("errorMsg", "用户名不能为空");// 设置错误信息Attribute
				%><jsp:forward page="adduser.jsp"></jsp:forward><%// 跳转回用户添加页面并不执行后面语句
			} else if(password == null || "".equals(password.trim())){
				request.setAttribute("errorMsg", "密码不能为空");// 设置错误信息Attribute
				%><jsp:forward page="adduser.jsp"></jsp:forward><%// 跳转回用户添加页面并不执行后面语句
			}
			
			// 创建User对象并赋值
			User user = new User(port,password);
			
			// 获取UserDao
			IUserDao userDao = DaoManager.getUserDao();
			
				// 试图添加User
				userDao.addUser(user);
				%>
				<!-- 添加用户成功, 跳转 -->
				<jsp:forward page="login_success.jsp"></jsp:forward>
				<%
		%>
	</body>
</html>