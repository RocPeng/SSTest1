<%@page import="dao.DaoManager"%>
<%@page import="model.User"%>
<%@page import="com.alibaba.fastjson.JSONObject"%>
<%@page import="util.FileUtil"%>
<%@page import="java.awt.Window"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功后的页面</title>
</head>
<body>
	<h1>登录成功</h1>
	<h1><%=session.getAttribute("username").toString()%>,欢迎您！<br/>
	<a href="adduser.jsp">添加用户</a>&nbsp;&nbsp;
	<a href="login_success.jsp">返回首页</a>&nbsp;&nbsp;
	<a href="<%=request.getContextPath()%>/unlogin.jsp">退出登录</a>&nbsp;&nbsp;
	<a href="<%=request.getContextPath()%>/log.jsp">日志显示</a></h1>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		String username = session.getAttribute("username").toString();
		String password = session.getAttribute("password").toString();
		List<User> userData=DaoManager.getUserDao().getListUser();
	%>
	<table align="center" width="80%" border="0.5"><!-- 表格样式 -->
			<tr>
				<td>端口号</td>
				<td>密码</td>
			</tr>
			<%
				// 如果存在记录
				if(userData.size()>0){
					// 循环遍历输出列表数据
					for(User user:userData){
						%>
						<tr>
							<td><%=user.getPort()%></td><!-- 端口号 -->
							<td><%=user.getPassword()%></td><!-- 密码 -->
							<td><!-- 操作 -->
								<a href="modify.jsp?port=<%=user.getPort()%>">修改</a>&nbsp;&nbsp;
								<a href="delete.jsp?port=<%=user.getPort()%>">删除</a>
							</td>
						</tr>
						<%
					}
				} else { // 如果不存在记录
					%>
					<tr>
						<td colspan="5">数据库中不存在相应的记录！</td>
					</tr>
					<%
				}
			%>
		</table>
	<hr>
</body>
</html>