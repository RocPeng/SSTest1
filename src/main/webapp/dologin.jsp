<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	session.setAttribute("username", username);
	session.setAttribute("password", password);
	if ("admin".equals(username) && "admin".equals(password)) {
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	} else {
		response.sendRedirect("login_failure.jsp");
	}
%>