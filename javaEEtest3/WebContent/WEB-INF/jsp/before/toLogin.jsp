<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<c:out value="${unamex}" default="游客" />你好<br>
<a href="${pageContext.request.contextPath }/before/toLogin">已经注册过，请进入登陆界面</a><br>
<a href="${pageContext.request.contextPath }/before/toregister">还没有注册，请前往注册界面</a><br>
</body>
</html>