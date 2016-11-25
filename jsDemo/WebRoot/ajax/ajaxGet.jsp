<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajaxGet.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  
  	当前时间：<span id="span"></span><br/>
  	<input id="input" type="button" value="获取时间"/>
  	<script type="text/javascript">
		document.getElementById("input").onclick = function() {
			var ajax = new XMLHttpRequest();
			if (ajax == null) {
				alert("你的浏览器不支持AJAX");
			} else {
				var method = "GET";
				var url = "${pageContext.request.contextPath}/ajaxGetServlet?time"+new Date();
				ajax.open(method, url);
				ajax.send(null);
				ajax.onreadystatechange = function(){
					if(ajax.readyState==4){
						if(ajax.status==200){
							var str = ajax.responseText;
							document.getElementById("span").innerHTML = str;
						}	
					}
				};
				
			}
		}
	</script>
  </body>
</html>
