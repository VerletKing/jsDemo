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
	<script type="text/javascript" src="js/ajax.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	用户名：<input type="text" id="userId" maxlength="5">
  	<span id="spanId"></span>
  	<script type="text/javascript">
  		var ajax = createAjax();
  		if(ajax != null){
  			document.getElementById("userId").onblur = function(){
  				var userName = this.value;
  				
	  			var method = "POST";
	  			var url = "${pageContext.request.contextPath}/UserServlet?time="+new Date().getTime();
	  			ajax.open(method, url)
	  			ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
	  			ajax.send("userName="+userName);
  				
  				ajax.onreadystatechange = function(){
  					if(ajax.readyState==4){
  						if(ajax.status==200){
  							var text = ajax.responseText;
  							
  							var imgElement = document.createElement("img");
  							imgElement.src=text;
  							imgElement.style.width="15px";
  							imgElement.style.height="15px";
  							
  							var spanElement = document.getElementById("spanId");
  							spanElement.innerHTML="";
  							spanElement.appendChild(imgElement);
  						}
  					}
  				}
  			}
  		}else{
  			alert("请更换浏览器.");
  		}
  	</script>
  	
  </body>
</html>
