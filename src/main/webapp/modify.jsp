<%-- 用户修改页面, 显示所选用户信息之后提供修改方法 --%>
<%@page import="model.User"%>
<%@page import="dao.DaoManager"%>
<%@page import="dao.IUserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户列表</title>
	</head>
	<body>
		<h1><a href="login_success.jsp">返回主页</a></h1>
		<hr/>
		<%
			// 获取参数更新的ID
			String port = new String(request.getParameter("port"));
		
			// 获取UserDao
			IUserDao userDao = DaoManager.getUserDao();
			
			// 读取指定ID的用户信息
			User user = userDao.loadUser(port);
		%>
	
		<!-- 添加用户表单 -->
		<form action="modify_action.jsp?port=<%=port%>" method="post"><!-- 跳转到添加用户后台处理页面 -->
			<table align="center" width="80%" border="0.5"><!-- 表格样式 -->
				<%
					String errorMsg;// 设置错误信息
					errorMsg = (String)request.getAttribute("errorMsg");// 获取错误信息
					if(errorMsg != null){// 如果错误信息存在
						%>
						<tr>
							<%-- 输出错误信息 --%>
							<td colspan="2"><%=errorMsg%></td>
						</tr>
						<%
					}
				%>
				<tr>
					<td>用户名</td>
					<td><%=user.getPort()%></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="text" name="password" value="<%=user.getPassword()%>"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="更新数据"/></td>
					<td colspan="2"><input type="reset" value="重置表单"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>