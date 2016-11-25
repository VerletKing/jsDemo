<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>验证码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <table>
  	<tr>
  		<td> 验证码：<input type="text" maxlength="4" size="4" id="inputId"></td>
  		<td><img src="identifyingCode.jsp"></td>
  		<td><span id="spanId"></span></td>
  	</tr>
  </table>
   
  <script type="text/javascript">
  	function trim(str){
  		str = str.replace(/^\s*/,"");
  		str = str.replace(/\s*$/,"");
  		return str;
  	}
  		
  	document.getElementById("inputId").onkeyup = function(){
  		var code = this.value;
  		code = trim(code);
  		var spanElement = document.getElementById("spanId");
  		spanElement.innerHTML="";
  		if(code.length==4){
  			var ajax = null;
  			try{
  				ajax = new XMLHttpRequest();
  			}catch(e1){
  				alert("请更换浏览器。");
  			}
  			if(ajax != null){
  				var method = "POST";
  				var url = "${pageContext.request.contextPath}/codeAction?time="+new Date().getTime();
  				ajax.open(method, url);
  				ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
  				ajax.send("code="+code);
  				
  				ajax.onreadystatechange = function(){
  					if(ajax.readyState==4){
  						if(ajax.status==200){
  							var tip = ajax.responseText;
  							var imgElement = document.createElement("img");
  							imgElement.src = tip;
  							imgElement.style.width="15px";
  							imgElement.style.height="15px";
  							spanElement.appendChild(imgElement);
  						}
  					}
  				}
  			}else{
  				alert("请更换浏览器。");
  			}
  		}
  	}
  </script>
  </body>
</html>
