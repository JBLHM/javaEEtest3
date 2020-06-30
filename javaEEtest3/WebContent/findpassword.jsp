   <!-- 密码找回,自动填写用户名.然后点击确认后,在数据库中删除 该用户,然后跳转至注册页面,如果发现在数据库中没有这个用户名,提示该账户未被注册,返回登陆界面-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/admin/common.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		table{
			text-align: center;
			border-collapse: collapse;
		}
		.bgcolor{
		  	background-color: #F08080;
		}
	</style>
	<script type="text/javascript">
		function changeColor(obj){
			obj.className = "bgcolor";
		}
		function changeColor1(obj){
			obj.className = "";
		}
		function cancel(){
			document.forms[0].action = "";
		}
		function gogo(){
			//document.forms[0]：表示获取当前页面的第一个表单
			document.forms[0].submit();
		}
	</script>
<title>Insert title here</title>

</head>
<body>
游客，你好<br>
<input type="image" src="${pageContext.request.contextPath}/images/admin/cat.jpg">

<a href="${pageContext.request.contextPath }/before/toLogin">已经注册过，请进入登陆界面</a><br>
<a href="${pageContext.request.contextPath }/before/toregister">还没有注册，请前往注册界面</a><br>
	<form:form action="${pageContext.request.contextPath}/before/findpassword"  method="post"  modelAttribute="findpassword">
		<table border="1" bordercolor="PaleGreen">
			<tr>
				<th width="200px">密码重置中,是否以下账户是你的账户</th>
			</tr>
			<tr>
				<th width="200px">名称:${userlogin.uname}</th>
			</tr>
			<tr>
				<td><a href="#">真的重置密码??</a></td>
			</tr>
			<tr>
			<td colspan="2">
				<input type="image" src="${pageContext.request.contextPath}/images/admin/ok.gif"  onclick="gogo()" >
				<input type="image" src="${pageContext.request.contextPath}/images/admin/cancel.gif" onclick="cancel()" >
			</td>
		</tr>
		</table>
	</form:form>
</body>
</body>
</html>

