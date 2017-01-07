<%-- 修改用户逻辑页面,用以执行修改操作/显示修改异常等并反馈到页面上 --%>
<%@page import="org.omg.CORBA.UserException"%>
<%@page import="model.User"%>
<%@page import="dao.DaoManager"%>
<%@page import="dao.IUserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>修改用户逻辑</title>
	</head>
	<body>
	
		<h1><a href="list.jsp">返回主页</a></h1>
		<hr/>
	
		<%
			// 获取参数更新的ID
			String port = new String(request.getParameter("port"));
		
			String password = request.getParameter("password");// 获取adduser.jsp中表单提交的登陆密码数据
			
			// 验证表单为空
			if(password == null || "".equals(password.trim())){
				request.setAttribute("errorMsg", "密码不能为空");// 设置错误信息Attribute
				%><jsp:forward page="modify.jsp"></jsp:forward><%// 跳转回用户添加页面并不执行后面语句
			}
			
			// 获取UserDao
			IUserDao userDao = DaoManager.getUserDao();
			
			// 读取数据库User对象并赋值
			User user = userDao.loadUser(port);
			user.setPassword(password);
				// 试图修改User
			userDao.updateUser(user);
			%>
			<!-- 添加用户成功, 跳转 -->
			<jsp:forward page="login_success.jsp"></jsp:forward>
			<%
		%>
	</body>
</html>