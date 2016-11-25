<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<form> 
  		用户名：<input type="text" id="userId" maxlength="5">
  	</form>
  	<hr/>
  	<span id="spanId"></span>
  	<script type="text/javascript">
  		var ajax = null;
  		try{
  			ajax = new ActiveXObject("microsoft.xmlhttp");
  		}catch(e1){
  			try{
  				ajax = new XMLHttpRequest();
  			}catch(e2){
  				alert("请更换浏览器。");
  			}
  		}
  		
  		document.getElementById("userId").onblur = function(){
  			var userName = this.value;
  			if(userName.length==0){
  				document.getElementById("spanId").innerHTML = "<font color='red'>请输入用户名</font>"; 
  			}
  			else{
  				userName = encodeURI(userName);
		  		var method = "get";
		  		var url = "${pageContext.request.contextPath}/UserServlet?time="+new Date().getTime()+"&userName="+userName;
		  		ajax.open(method, url);
  				ajax.send(null);
  				ajax.onreadystatechange = function(){
  					if(ajax.readyState==4){
  						if(ajax.status==200){
  							var text = ajax.responseText;
  							document.getElementById("spanId").innerHTML = text;
  						}
  					}
  				}
  			}
  		}
  	</script>
  </body>
</html>
