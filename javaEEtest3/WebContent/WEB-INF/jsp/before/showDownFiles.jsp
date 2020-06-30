<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<table>
	<tr>
		<td>欢迎你，${unamex}</td>
	</tr>
		<tr>
			<td>目录下的文件名</td>
		</tr>
		<!-- 遍历model中的files -->
		<c:forEach items="${files}" var="filename">
			<tr>
				<td><a href="${pageContext.request.contextPath }/down?filename=${filename}">${filename}</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="${pageContext.request.contextPath }/before/about.jsp">前往前端主界面</a><br>
	<input type="image" src="${pageContext.request.contextPath}/images/admin/flower2.png"><br>
</body>
</html>