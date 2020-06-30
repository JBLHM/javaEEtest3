<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>

<head>
	<title>欢迎来到好孩子学习网站</title>
	<meta charset="UTF-8">
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

<form:form modelAttribute="choosepay" method="post" action="${pageContext.request.contextPath}/choose" >
    <table>
        <tr>
            <td>姓名:</td>
            <td><form:input path="uname"/></td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td><form:input path="uemail"/></td>
        </tr>
        <tr>
			<td>套餐:</td>
            <td>
                <form:radiobutton path="choose" value="uone" label="套餐1 版本：学习版  套餐使用时间：无限   花费：免费 " /><br>
                <form:radiobutton path="choose" value="utwo" label="套餐2  版本：标准版  套餐使用时间：1月   花费：15" /><br>
                <form:radiobutton path="choose" value="uthree" label="套餐3 版本：专业版 套餐使用时间：1月   花费：25" /><br>
                <form:radiobutton path="choose" value="ufour" label="套餐4  版本：企业版  套餐使用时间：1月   花费：45" /><br>
                <form:radiobutton path="choose" value="ufive" label="套餐5  版本：标准版  套餐使用时间：1年   花费：110" /><br>
                <form:radiobutton path="choose" value="usix" label="套餐6 版本：专业版 套餐使用时间：1年   花费：215" /><br>
                <form:radiobutton path="choose" value="useven" label="套餐7  版本：企业版  套餐使用时间：1年   花费：320" /><br>
                
            </td>
        </tr>
	<tr>
            <td colspan="2">
                <input type="submit" value="提交变更"/>
            </td>
        </tr>
    </table>
</form:form>
<input type="image" src="${pageContext.request.contextPath}/images/admin/flower2.png"><br>







	
${moneymsg}
</body>
</html>