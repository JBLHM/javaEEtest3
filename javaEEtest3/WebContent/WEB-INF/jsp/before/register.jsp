<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>  
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>游客请先登录</title>
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
	div {
    width: 100px;
    padding: 5px;
    text-align: center;
    background-color: #5dffa0;
}
p {
    padding: 5px;
    display: inline-block;
    text-align: center;
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
		
		function refreshCode(){
			document.getElementById("code").src = "${pageContext.request.contextPath}/validateCode?" + Math.random();
	    }
		
	}
	</script>
  </head>
  <body>
  
  	<form:form action="${pageContext.request.contextPath}/before/register"  method="post"  modelAttribute="userlogin">
	<table border="1" align="center">
		
		<tr>
			<td>姓名：</td>
			<td>
				<input type="text" name="uname" cssClass="textSize" value="${unamex}"/>
			</td>
		</tr>
		<tr>
			<td>密码：</td>
			<td>
				<input type="text" name="upassword" cssClass="textSize" />
			</td>
		</tr>
		<tr>
			<td>手机号：</td>
			<td>
				<input type="text" name="utelephone" cssClass="textSize"/>
			</td>
		</tr>
		<tr>
			<td>邮箱：</td>
			<td>
				<input type="text" name="uemail"   cssClass="textSize"/>
			</td>
		</tr>
		<tr>
			<tr>
			<td>验证码：</td>
			<td>
				<input type="text" name="code" cssClass="textSize"/>
			</td>
		</tr>		
		<tr>
			<td>
				<img id="code" src="${pageContext.request.contextPath}/validateCode"/>
			</td>
			<td class="ared">
					
				<Button id="code" onclick="refreshCode()">点击换一张验证码<br>		
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
	
	<div>
    <p>提示信息：之前你的用户名:<c:out value="${unamex}" default="未知"></c:out></p>
	</div>
  </body>
</html>
