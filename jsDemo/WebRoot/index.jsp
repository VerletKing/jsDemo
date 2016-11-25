<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="JQuery/jquery-1.8.2.js"></script>
  </head>
  
  <body>
  	<table align="center" border="1">
  		<tr>
  			<td align="right">
  				输入税前工资：<input type="text" name="mony"/>
  				<br>
  				<hr>
  				<input  type="button" value="计算"/>
  			</td>
  		</tr>
  	</table>
  	
  	<script type="text/javascript">
  		$(":button").click(function(){
  			$("table tr:gt(0)").remove();
  			var money = $(":text").val();
  			var url = "${pageContext.request.contextPath}/taxAction.action?time="+new Date().getTime();
  			var sendData = "money="+money;
  			$.post(url,sendData,function(backData,textStatus,ajax){
  				var taxMoney = backData.taxMoney;
  				var $tr = $("<tr><td>缴税："+taxMoney+"</td></tr>")
  				$("table").append($tr);
  			})
  		})
  	</script>
  </body>
</html>
