<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table>
	<tr>
		<td>上传者：</td>
		<td>文件名:</td>
		<td>文件描述:</td>
		<td>奖励金币:</td>
	</tr>
	<tr>
		<td>${areallyupload.uprovidename}</td>
		<td>${areallyupload.filename}</td>
		<td>${areallyupload.adescription}</td>
		<td>${areallyupload.offer}</td>
		
	</tr>
	
</table>
<a href="${pageContext.request.contextPath }/before/about.jsp">返回主界面</a>
<input type="image" src="${pageContext.request.contextPath}/images/admin/flowing.png"><br>
</body>
</html>