<%-- 用户添加页面,用以展示用户添加的页面显示部分 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加新用户</title>
		</head>
	<body>
	
		<h1><a href="login_success.jsp">返回主页</a></h1>
		<hr/>
	
		<!-- 添加用户表单 -->
		<form action="add_action.jsp" method="post"><!-- 跳转到添加用户后台处理页面 -->
			<table align="center" width="80%" border="0.5"><!-- 表格样式 -->
				<tr>
					<td>用户名</td>
					<td><input type="text" name="port" /></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="添加" /></td>
				</tr>
			</table>
		</form>
	</body>
</html>