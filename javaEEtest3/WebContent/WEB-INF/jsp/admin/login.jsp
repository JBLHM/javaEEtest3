<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登录</title>
	<style type="text/css">
	table{
		text-align: center;
	}
	.textSize{
		width: 120px;
		height: 25px;
	}
	* {
		margin: 0px;
		padding: 0px;
	}
	body {
		font-family: Arial, Helvetica, sans-serif;
		font-size: 12px;
		margin: 10px 10px auto;
		background-image: url(images/admin/bb.jpg);
	}
	</style>
	<script type="text/javascript">
	//确定按钮
	function gogo(){
		//document.forms[0]：表示获取当前页面的第一个表单
		document.forms[0].submit();
	}
	//取消按钮
	function cancel(){
		document.forms[0].action = "";
	}
	</script>
  </head>
  <body>
  
  	<form:form action="${pageContext.request.contextPath}/admindetail/adminlogin"  method="post"  modelAttribute="admindetail">
	<table>
		<tr>
			<td colspan="2"><img src="${pageContext.request.contextPath}/images/admin/login.gif"></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td>
				<form:input path="adminName" cssClass="textSize"/>
			</td>
		</tr>
		<tr>
			<td>密码：</td>
			<td>
				<form:password path="adminPassword" cssClass="textSize" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="image" src="${pageContext.request.contextPath}/images/admin/ok.gif"  onclick="gogo()" >
				<input type="image" src="${pageContext.request.contextPath}/images/admin/cancel.gif" onclick="cancel()" >
			</td>
		</tr>
	</table>
	</form:form>

	<input type="image" src="${pageContext.request.contextPath}/images/admin/mountain.jpg"><br>
  </body>
</html>
