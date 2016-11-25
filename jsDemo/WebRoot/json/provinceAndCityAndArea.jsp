<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'provinceAndCityAndArea.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <select style="width: 111px" id="provinceId">
    	<option>请选择省份</option>
    	<option>湖北</option>
    	<option>湖南</option>
    	<option>上海</option>
    </select>
    &nbsp;
    <select style="width: 111px" id="cityId">
    	<option>请选择城市</option>
    </select>
    &nbsp;
     <select style="width: 111px" id="areaId">
    	<option>请选择地区</option>
    </select>
    
   	<script type="text/javascript">
   		document.getElementById("provinceId").onchange = function(){
   			var cityElement = document.getElementById("cityId");
   			cityElement.options.length = 1;
   			document.getElementById("areaId").options.length=1;
   			var provinceValue = this[this.selectedIndex].innerHTML;
   			if("请选择省份" != provinceValue){
   				var ajax = new XMLHttpRequest();
   				if(ajax != null){
   					var method = "POST";
   					var url = "${pageContext.request.contextPath}/findProvinceByCityAction?time="+new Date().getTime();
   					ajax.open(method, url);
   					ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
   					ajax.send("bean.province="+provinceValue);
   					
   					ajax.onreadystatechange = function(){
   						if(ajax.readyState==4){
   							if(ajax.status==200){
   								var jsonJava = ajax.responseText;
   								var jsonJs = eval("("+jsonJava+")");
   								for(var i=0;i<jsonJs.cityList.length;i++){
   									var optionElement = document.createElement("option");
   									optionElement.innerHTML=jsonJs.cityList[i];
   									cityElement.appendChild(optionElement);
   								}
   							}
   						}
   					}
   				}
   			}
   		}
   	</script>
   	
   	<script type="text/javascript">
   		document.getElementById("cityId").onchange = function(){
   			var areaElement = document.getElementById("areaId");
   			areaElement.options.length=1;
   			var cityValue = this[this.selectedIndex].innerHTML;
   			if("请选择城市" != cityValue){
   				var ajax = new XMLHttpRequest();
   				if(ajax != null){
   					var method = "POST";
   					var url = "${pageContext.request.contextPath}/findCityByAreaAction?time="+new Date().getTime();
   					ajax.open(method, url);
   					ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
   					ajax.send("bean.city="+cityValue);
   					
   					ajax.onreadystatechange = function(){
   						if(ajax.readyState==4){
   							if(ajax.status==200){
   								var jsonJava = ajax.responseText;
   								var jsonJs = eval("("+jsonJava+")");
   								for(var i=0;i<jsonJs.areaList.length;i++){
   									var optionElement = document.createElement("option");
   									optionElement.innerHTML = jsonJs.areaList[i];
   									areaElement.appendChild(optionElement);
   								}
   							}
   						}
   					} 
   				}else{
   				
   				}
   			}
   		}
   	</script>
  </body>
</html>
