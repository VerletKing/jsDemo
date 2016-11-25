<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'provinceAndCity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/JQuery/jquery-1.8.2.js"></script>
  </head>
  
  <body>
  	<select id="province">
  		<option>请选择省份</option>
  		<option>湖北</option>
  		<option>湖南</option>
  	</select>
  	&nbsp;
  	<select id="city">
  		<option>请选择城市</option>
  	</select>
  	<script type="text/javascript">
  		$("#province").change(function(){
  			$("#city option:gt(0)").remove();
  			var province = $("#province option:selected").text();
  			if("请选择省份" != province){
	  			var url = "${pageContext.request.contextPath}/findCity.action";
	  			var sendData = "province="+province;
	  			$.post(url,sendData,function(backData,textStatus,ajax){
	  				var cityList = backData.cityList;
	  				$(cityList).each(function(){
	  					var $city = $("<option>"+this+"</option>");
	  					$("#city").append($city);
	  				})
	  			})
  			}
  		})
  	</script>
  </body>
</html>
