<%-- 用户删除页面, 主要是删除一项的逻辑运算 --%>
<%@page import="dao.IUserDao"%>
<%@page import="dao.DaoManager"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String username = session.getAttribute("username").toString();
	String password = session.getAttribute("password").toString();
	String port = new String(request.getParameter("port"));// 获取ID参数
	IUserDao userDao = DaoManager.getUserDao();// 创建Dao
	userDao.deleteUser(port);
	response.sendRedirect("login_success.jsp");// 服务器跳转到列表页面
%>