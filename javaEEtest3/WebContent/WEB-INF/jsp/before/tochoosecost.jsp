<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${unamex},你好
${payreal}<br>
<a href="${pageContext.request.contextPath }/before/about.jsp">取消返回主界面</a>
<a href="${pageContext.request.contextPath }/toreallychoosecost">继续前往支付界面</a><br>
<input type="image" src="${pageContext.request.contextPath}/images/admin/mountain.jpg"><br>
</body>
</html>