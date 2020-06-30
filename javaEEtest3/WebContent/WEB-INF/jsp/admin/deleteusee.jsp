<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <base href="<%=basePath%>">
    <title>selectGoods.jsp</title>
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
	</script>
	<script type="text/javascript">
  		
  		function checkDel(uname){
  			if(window.confirm("是否删除该商品？")){
  				window.location.href = "/javaEEtest3/adminUse/deleteAuse?uname="+uname;
  			}
  		}
  </script>
</head>
<body>
	<c:if test="${alluse.size()== 0 }">
		您还没有商品。
	</c:if>
	<c:if test="${alluse.size()!= 0 }">
		
		<table border="1" bordercolor="PaleGreen">
			<tr>
	
				
				<th width="200px">名称</th>
				<th width="200px">密码</th>
				<th width="200px">电话号码</th>
				<th width="200px">邮箱</th>
				<th width="200px">删除</th>
			</tr>
			<c:forEach items="${alluse }" var="goods">
				<tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
					<td>${goods.uname }</td>
					<td>${goods.upassword}</td>
					<td>${goods.utelephone}</td>
					<td>${goods.uemail}</td>
					<td><a href="javascript:checkDel('${goods.uname}')">删除</a></td>
				</tr>
			</c:forEach>
			
			<tr>
				<td colspan="6">
					<input type="button" value="删除" >
				</td>
			</tr>
			<tr>
				<td colspan="6" align="right">
					&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;共${totalCount}条记录&nbsp;&nbsp;共${totalPage}页&nbsp;&nbsp;
					第${pageCur}页&nbsp;&nbsp;
					<c:url var="url_pre" value="adminUse/selectUse">
						<c:param name="pageCur" value="${pageCur - 1 }"/>
						<c:param name="act" value="deleteSelect"/>
					</c:url>
					<c:url var="url_next" value="adminUse/selectUse">
						<c:param name="pageCur" value="${pageCur + 1 }"/>
						<c:param name="act" value="deleteSelect"/>
					</c:url>
					<!-- 第一页没有上一页 -->
					<c:if test="${pageCur != 1 }">
						<a href="${url_pre}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</c:if>
					<!-- 最后一页，没有下一页 -->
					<c:if test="${pageCur != totalPage && totalPage != 0}">
						<a href="${url_next}">下一页</a>
					</c:if>
				</td>
			</tr> 
			<tr>
				<td colspan="6">${msg }</td>
			</tr>
		</table>
		
	</c:if>
</body>
</html>