<%-- 用户退出登录的逻辑页面,用以去掉登陆情况 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 移除登陆Sesstion
	session.removeAttribute("username");
session.removeAttribute("password");
%>
<!-- 跳转回登陆界面 -->
<jsp:forward page="index.jsp"></jsp:forward>