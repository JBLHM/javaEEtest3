<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

当前用户：${userlogin.uname}<br>

	<a href="${pageContext.request.contextPath }/before/logout">退出</a><br>
	<a href="${pageContext.request.contextPath }/before/about.jsp">前往前端主界面</a><br>
	<input type="image" src="${pageContext.request.contextPath}/images/admin/mountain.jpg"><br>
</body>
</html> 