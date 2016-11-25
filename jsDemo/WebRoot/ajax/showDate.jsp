<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  	现在时间：${requestScope.nowTime}<br/>
  	<input id="dateId" type="button" value="显示时间"/><p/>

	<script type="text/javascript">
		document.getElementById("dateId").onclick = function() {
			var uri = "${pageContext.request.contextPath}/timeServlet";
			window.location.href = uri;
		}
	</script>

	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据静态数据<br/>
  	
  </body>
</html>
