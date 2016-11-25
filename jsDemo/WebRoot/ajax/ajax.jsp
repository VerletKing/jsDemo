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
  
  	<input id="ajaxId" type="button" value="是否支持AJAX">
  	<script type="text/javascript">
  		document.getElementById("ajaxId").onclick = function(){
  			var ajax = null;
  			try{
  				ajax = new ActiveXObject("microsoft.xmlhttp");
  			}catch(e1){
  				try{
	  				ajax = new XMLHttpRequest();
  				}catch(e2){
  					alert("不支持AJAX");
  				}
  			}
  			if(ajax!=null){
  				alert("支持AJAX");
  			}
  		}
  	</script>
		
  </body>
</html>
