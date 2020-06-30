<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<th>用户名：</th>
	<th>邮箱:</th>
	<th>使用期限:</th>
	<th>版本:</th>
	<th>价格:</th>
	<tr>
		<td>${reallymoney.uname}</td>
		<td>${reallymoney.uemail}</td>
		<td>${reallymoney.ulevel}</td>
		<td>${reallymoney.uuse}</td>
		<td>${reallymoney.uprice}</td>
	</tr>
	
</table>
<a href="${pageContext.request.contextPath }/before/about.jsp">返回主界面</a>
<input type="image" src="${pageContext.request.contextPath}/images/admin/flower2.png"><br>
</body>
</html>